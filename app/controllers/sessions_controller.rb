class SessionsController < ApplicationController

	before_action :authenticate_user!

	def create
		current_user.update_from_auth_hash(auth_hash)
		redirect_to root_path
	end

	protected

	def auth_hash
		request.env['omniauth.auth']
	end
end