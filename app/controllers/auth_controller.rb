class AuthController < ApplicationController
  #protect_from_forgery with: :exception
  before_action :save_login_state, :only => [:login, :signin, :register, :create]
  layout "main"

  
  def index
  	
  end


  def register
  	@user = User.new 
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:notice] = "You signed up successfully"
  		redirect_to request.referer || root_path
  	
  	end
  	render "register"
  end


  def login
  	
  end

  def signin
  	#post = params[:user]
  	user = User.authenticate(params[:user][:email], params[:user][:password])
  	if user
  		session[:id] = user.id
  		session[:firstname] = user.firstname
  		session[:lastname] = user.lastname
  		session[:email] = user.email
  		session[:user_type] = user.user_type
  		flash[:notice] = "Logged in!"
  		if user.user_type == 'admin'
  			redirect_to "/admin" || root_path
  		else
  			redirect_to "/dashboard" || root_path
  		end
  	else
  		flash[:error] = "Invalid email or password"
  		redirect_to request.referer || root_path
  	end
  end


  def destroy
  	session[:id] = nil
	session[:firstname] = nil
	session[:lastname] = nil
	session[:email] = nil
	session[:user_type] = nil
  	redirect_to "/auth/login", :notice => "Logged out!"
  end


  def user_params
  	params.require(:user).permit(:firstname,:lastname, :email, :password, :password_confirmation)
  end


end
