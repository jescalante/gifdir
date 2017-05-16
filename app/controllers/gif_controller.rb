class GifController < ApplicationController
  def new
    @gif = Gif.new
  end

  def create
    @gif = Gif.new
  end
end
