class UsersController < ApplicationController
  
  
  def show
    @user = User.find(params[:id])
    @photo = Photo.find(params[:id])
    @photos = @user.photos.includes(:user).order(created_at: :desc)


  end

end
