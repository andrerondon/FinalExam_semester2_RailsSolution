class TweetsController < ApplicationController

    def index
        @tweets = Tweet.all.order('updated_at DESC') 
    end

    def new 
        @tweet = Tweet.new 
    end

    def create
        @tweet = Tweet.new(params.require(:tweet).permit(:twitter, :tweet))
        if @tweet.save
            redirect_to tweets_path
        else
            render :new
        end
    end

    def show
        @tweet = Tweet.find(params[:id])
    end

    def destroy
        @tweet = Tweet.find(params[:id])
        @tweet.destroy
        redirect_to tweets_path
    end

    def edit
        @tweet = Tweet.find(params[:id])
    end

    def update
        @tweet = Tweet.find(params[:id])
        if @tweet.update(params.require(:tweet).permit(:twitter, :tweet))
            redirect_to tweet_path(@tweet)
        else
            render :edit
        end
    end

  

end
