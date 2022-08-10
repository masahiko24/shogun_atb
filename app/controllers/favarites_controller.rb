class FavaritesController < ApplicationController

  def create
    @favarite = current_user.favarites.create(photo_id: params[:photo_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @photo = Photo.find(params[:photo_id])
    @favarite = current_user.favarites.find_by(photo_id: @photo.id)
    @favarite.destroy
    redirect_back(fallback_location: root_path)
  end
end

