class PhotosController < ApplicationController
  # before_action :set_photo, only: [:edit, :show, :destroy, :update]
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @photo = Photo.all.order(created_at: :desc)
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to root_path
    else
      render :new
    end
  end

    def update
      @photo.update(photo_params)
      @photo = Photo.update
      if @photo.save
        redirect_to root_path
     else
        render :edit
    end
  end

  def show
  end

  def edit
  end

  def destroy
  end
  

  private

  def photo_params
    params.require(:photo).permit(:nickname, :title, :image, :memo).merge(user_id: current_user.id)
  end

  # def set_photo
  #   @photo = Photo.find(params[:id])
  # end


end
