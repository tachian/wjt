class WelcomeController < ApplicationController
	before_action :authenticate_user!
	
  def index
    if (!current_user.secret.blank?)
    	@tweets = []
      @search = ""
    end
  end

  def search
  	@tweets = current_user.twitter.user_timeline(params[:q])

  	render :index

  end
end
