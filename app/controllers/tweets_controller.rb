# encoding = utf-8
class TweetsController < ApplicationController
  
  def new
  	@tweet = Tweet.new
  end

  def default    
  end
  
  def index
  end

  def show
  end
  def create
	@tweet = Tweet.create(params.require(:tweet).permit([:estado, :nombre]))
  end
end
