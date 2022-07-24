class CommentsController < ApplicationController
  # before_action :set_comment, only: [:destroy]



  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to photo_path(@comment.photo)
    else
      @photo = @comment.photo
      @comments = @photo.comments.includes(:user)
      render template: 'photos/show'
    end
  end

  def destroy
    @comment = current_user.comments.find_by(id: params[:id])
    @comments.destroy
    redirect_to photo_path(@comment.photo)
  end


  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, photo_id: params[:photo_id])
  end

  # def set_comment
  # end
end
