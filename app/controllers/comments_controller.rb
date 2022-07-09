class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    # redirect_to "/tweets/#{comment.tweet.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, photo_id: params[:photo_id])
  end
end
