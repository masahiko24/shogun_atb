class FavaritesController < ApplicationController

  def create
    @favarite = current_user.favarites.create(photo_id: params[:photo_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @favarite = Favarite.find_by(photo_id: params[:photo_id], user_id: current_user.id)
    @favarite.destroy
    redirect_back(fallback_location: root_path)
  end
end

