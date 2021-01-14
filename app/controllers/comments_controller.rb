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
    # @comment = Comments.new(tweet_params)
    # @tweet.user = current_user
    # if @tweet.save
    #   redirect_to tweets_path
    # else
    #   @tweets = Tweet.all
    #   render 'index'
    # end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
