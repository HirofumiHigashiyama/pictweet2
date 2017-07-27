class CommentsController < ApplicationController
  def create
    @comments = Comment.create(text: params[:text], tweet_id: params[:tweet_id], user_id: params[:user_id])
    redirect_to "/tweets/#{@comments.tweet.id}"
  end

  private
  def comment_params
    params.permit(:text, :tweet_id)
  end
end
