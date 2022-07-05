class UsersController < ApplicationController
  
  
  def show
    @user = User.find(params[:id])
    @photos = @user.photos
  end

  private

  def photo_params
    params.require(:photo).permit(:nickname, :title, :image, :memo).merge(user_id: current_user.id)
  end

  def set_item
    @user = User.find(params[:id])
  end
end
