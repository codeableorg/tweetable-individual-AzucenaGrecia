class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to tweets_path
    else
      render 'edit'
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to tweets_path
  end

  private 

  def tweet_params
    params.require(:tweet).permit(:body)
  end
end
