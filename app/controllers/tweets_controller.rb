class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  def new
  end
  def create
    Tweet.create(name: params[:name], text: params[:text], image: params[:image])
  end
end
