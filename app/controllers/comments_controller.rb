class CommentsController < ApplicationController
  def edit
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.find(params[:id])
    if @comment.update(comment_params)
      redirect_to tweets_path
    else
      render 'edit'
    end
  end

  def destroy
    tweet = Tweet.find(params[:tweet_id])
    comment = tweet.comments.find(params[:id])
    comment.destroy
    redirect_to tweets_path
  end

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to tweets_path
    else
      @comment = Comment.all
      redirect_to tweet_path
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
