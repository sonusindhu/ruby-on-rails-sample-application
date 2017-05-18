class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	

	protected 
	def authenticate_user
		if session[:id]
		    # set current user object to @current_user object variable
		    @current_user = User.find session[:id] 
		    return true	
		else
		 	redirect_to(:controller => 'auth', :action => 'login')
		 	return false
		end
	end

	def authenticate_admin
		if session[:user_type] && session[:user_type]=='admin'
	    	@current_user = User.find session[:id] 
	    	return true	
		else
		 	redirect_to('/auth/login')
		 	return false
		end
	end

	def save_login_state
		if session[:id]
			redirect_to(:controller => 'users', :action => 'dashboard')
			return false
		else
			return true
		end
	end


end
