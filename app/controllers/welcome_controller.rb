class WelcomeController < ApplicationController
	before_action :authenticate_user!
	
  def index
    if (!current_user.secret.blank?)
    	@tweets = []
      @search = ""
    end
  end

  def search
  	if (!current_user.secret.blank?)
  		@tweets = current_user.twitter.user_timeline(params[:q])
  	end
  	render :index
  end
end
