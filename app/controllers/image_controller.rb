class ImageController < ApplicationController
  def index
    @image = Image.all()
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @user = :current_user
  end

  private 
  def image_params
      params.require(:image).permit(:image)
  end
end

