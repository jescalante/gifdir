class HomeController < ApplicationController
  def index
    @gif = Gif.new
  end
end
