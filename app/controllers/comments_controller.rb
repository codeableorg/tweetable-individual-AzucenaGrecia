class CommentsController < ApplicationController
  def edit
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.find(params[:id])
    if @comment.update(comment_params)
      redirect_to @tweet
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
    @comment = @tweet.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @tweet
    else
      @comments = @tweet.comments.first(@tweet.comments.length-1)
      render 'tweets/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
