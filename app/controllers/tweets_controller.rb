class TweetsController < ApplicationController
 
  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end
 
  def new
    @tweet = current_user.tweets.new
  end
  
  def edit
    @tweet = current_user.tweets.find(params[:id])
  end

  def create
    @tweet = current_user.tweets.new(tweet_params)

      if @tweet.save
        redirect_to tweet_url(@tweet), notice: "Você tweetou corretamente" 
      else
       render :new, status: :unprocessable_entity 
      end
  end

  def update
    @tweet = current_user.tweets.new(params[:id])
      if @tweet.update(tweet_params)
        redirect_to tweet_url(@tweet), notice: "Tweet atualizado com sucesso" 
      else
        render :edit, status: :unprocessable_entity 
      end
    end
  end

  def destroy
    @tweet = current_user.tweets.new(params[:id])
    @tweet.destroy
       redirect_to tweets_url, notice: "Se arrependou do que disse né!"
    end

  private
    def tweet_params
      params.require(:tweet).permit(:user_id, :conteudo)
    end
