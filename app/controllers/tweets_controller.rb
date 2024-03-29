class TweetsController < ApplicationController
    before_action :require_user_logged_in!
    before_action :set_tweet, only: [:show, :edit, :update, :destroy]

    def index
        @tweets = Current.user.tweets
    end

    def new
        @tweet = tweet.new
    end

    def create
        @tweet = Current.user.tweets.create(tweet_params)
        if @tweet.save
           
            redirect_to tweets_path, notice: "Tweet was scheduled successfully"
        else
            render :new
        end
    end

    def edit
        #no need to define anything, all defined in create/new
    end

    def update
        if @tweet.update(tweet_params)
            
            redirect_to tweets_path, notice: "Tweet was updated successfully"
        else
            render :edit
        end
    end

    def destroy
        @tweet.destroy
        redirect_to tweets_path, notice: "Tweet was unscheduled successfully"
    end

    private

    def tweet_params
        params.require(:tweet).permit(:twitter_account_id, :body, :publish_at)
    end

    def set_tweet 
        #id is grabbed from url
        @tweet = Current.user.tweets.find(params[:id])
    end

end