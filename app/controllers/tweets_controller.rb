class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all.sort{|x,y| y[:created_at]<=>x[:created_at]}
    @tweet = Tweet.new
  end

  def show
    @tweet = Tweet.find(params[:id])
    @comments = @tweet.comments.sort{|x,y| y[:created_at]<=>x[:created_at]}
    @comment = Comment.new
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def new
    @tweet = Tweet.new
    # redirect_to tweets_path
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user = current_user
    if @tweet.save
      redirect_to tweets_path
    else
      @tweets = Tweet.all.sort{|x,y| y[:created_at]<=>x[:created_at]}
      render 'index'
    end
  end

  def update
    @tweet = Tweet.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to @tweet
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
