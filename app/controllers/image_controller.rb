class ImageController < ApplicationController
  def index
    @image = Image.all()
  end

  def show
    @image = Image.find(search_params[:id])
  end

  def search
    if search_params[:search]
      @image = Image.all()
    else
      @parameter = search_params[:search].downcase
      @image = Image.all.where("lower(caption) LIKE :search", search: "%#{@parameter}%")
    end

  end

  def new
    @user = :current_user
  end

  private 
  def search_params
    params.require(:search)
  end

end

