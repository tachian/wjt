class WelcomeController < ApplicationController
	before_action :authenticate_user!
	
  def index
    if (!current_user.secret.blank?)
      @tweets = current_user.twitter.home_timeline(:count => 25)
    end
  end

end
