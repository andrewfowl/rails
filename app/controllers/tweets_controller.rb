class TweetsController < ApplicationController
    before_action :require_user_logged_in!

    def index
        @tweets = Current.user.tweets
    end

    def new
        @tweet = tweet.new
    end

    def destroy
    end

end