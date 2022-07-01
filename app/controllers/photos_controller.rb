class PhotosController < ApplicationController
  def index
    @photo = Photo.includes(:user)
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo = Photo.create

    if @photo.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
  end

  private

  def photo_params
    params.require(:photo).permit(:nickname, :title, :image, :memo).merge(user_id: current_user.id)
  end
end
