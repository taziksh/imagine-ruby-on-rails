class ImageController < ApplicationController
  def index
    @image = Image.all()
  end

  def show
    @image = Image.find(params[:id])
  end

  def search

  end

  def new
    @user = :current_user
  end

  private 
  def image_params
      params.require(:image).permit(:caption)
  end

  def search_params
    params.require(:file_name)
  end

end

