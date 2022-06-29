class UsersController < ApplicationController
  def show
    @name = current_user.name
    @photos = current_user.photos
  end
end
