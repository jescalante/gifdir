class GifController < ApplicationController
  def new
    @gif = Gif.new
  end

  def create
    @gif = Gif.new(gif_params)
    if @gif.save
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
