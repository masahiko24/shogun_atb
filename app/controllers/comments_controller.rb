class CommentsController < ApplicationController
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

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, photo_id: params[:photo_id])
  end
end
