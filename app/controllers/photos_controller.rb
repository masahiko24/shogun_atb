class PhotosController < ApplicationController
  before_action :set_photo, only: [:edit, :show, :destroy, :update]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @photos = Photo.includes(:user).order(created_at: :desc)
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user = current_user
    if @photo.save
      redirect_to root_path, notice: '投稿が完了しました。'
    else
      render :new
    end
  end

  def update
    if @photo.update(photo_params)
      redirect_to root_path, notice: '投稿の更新が完了しました。'
    else
      render :edit
    end
  end

  def show
    @comment = Comment.new
    @comments = @photo.comments.includes(:user)
  end

  def edit
  end

  def destroy
    @photo.destroy
    redirect_to root_path
  end

  private

  def photo_params
    params.require(:photo).permit(:nickname, :title, :image, :memo).merge(user_id: current_user.id)
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end
end
