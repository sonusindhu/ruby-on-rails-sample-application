class UsersController < ApplicationController
	before_action :authenticate_user, :only => [:dashboard]
	#protect_from_forgery with: :exception
	layout "main"
	def index
		
	end

	def dashboard
		
	end
end
