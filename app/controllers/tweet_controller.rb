class TweetController < ApplicationController

  def login
    session[:zombie_id] == nil
    zombie = Zombie.find_by name: params[:name]
    if zombie.eql?nil
      zombie = Zombie.create(name: params[:name], pass: params[:pass])
      redirect_to action: "show"
    else
      if zombie.pass == params[:pass]
        session[:zombie_id] = zombie.id 
        redirect_to action: "show"
      else
        flash[:notice] = "Incorrect password"
        redirect_to action: "index"
      end
    end
  end

  def show 
    @tweets = Tweet.all
    @zombies = Zombie.all
  end

  def create
    zombie = Zombie.find(session[:zombie_id])
    Tweet.create(status: params[:status], zombie: zombie)
    redirect_to action: "show"
  end

  def edit
    @tweet = Tweet.find(params[:id])
    if session[:zombie_id] != @tweet.zombie.id
      flash[:notice] = "Sorry, this tweet is not yours!"
      redirect_to action: "show"
    end
  end

  def update
    tweet = Tweet.find(params[:tweet_id])
    tweet.update(status: params[:status])
    redirect_to action: "show"
  end

  def delete
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to action: "show"
  end

  def index 
  end

  def new
  end
end
