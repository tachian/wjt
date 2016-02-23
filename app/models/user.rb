class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def update_from_auth_hash(auth_hash)
  	self.update( profile_image: auth_hash.info.image,
  							 token: auth_hash.credentials.token,
  							 secret: auth_hash.credentials.secret)
  end

  def twitter
		Twitter::REST::Client.new do |config|
		  config.consumer_key = Rails.application.secrets.twitter_api_key
		  config.consumer_secret = Rails.application.secrets.twitter_api_secret
		  config.access_token = token
		  config.access_token_secret = secret
		end
  end
end
