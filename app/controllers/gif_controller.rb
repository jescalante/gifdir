class GifController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @gif = Gif.new
  end

  def create
    @gif = Gif.new(gif_params)

    if @gif.save
      tag_names = params[:tags].split(" ").reject(&:blank?)
      tags = tag_names.map do |tag_name|
        Tag.find_or_create_by(name: tag_name)
      end

      @gif.tags = tags

      flash[:notice] = "Gif uploaded successfully"
      redirect_to gif_new_path
    else
      flash[:alert] = @gif.errors.messages.values.first
      render :new
    end
  end

  private
  def gif_params
    params.require(:gif).permit(:file)
  end
end
