class FavaritesController < ApplicationController

def create
  @photo_favarite = Favarite.new(user_id: current_user.id, post_id: params[:post_id])
  @photo_favarite.save
  redirect_to photo_path(params[:photo_id]) 
end

def destroy
  @photo_favarite = Favarite.find_by(user_id: current_user.id, post_id: params[:post_id])
  @photo_favarite.destroy
  redirect_to photo_path(params[:photo_id]) 
end
end

