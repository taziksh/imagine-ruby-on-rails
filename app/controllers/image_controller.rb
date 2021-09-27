class ImageController < ApplicationController
  def index
  end

  def show
    @image = Image.find(params[:id])
  end
end
