Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	# 
	get '/', to: 'home#index', as: 'home'
	get '/auth/login', to: 'auth#login', as: 'login'
	get '/auth/register', to: 'auth#register', as: 'register'
	post '/auth/create', to: 'auth#create'
	post '/auth/authenticate', to: 'auth#signin'
	get "auth/logout" => "auth#destroy", :as => "logout"
	resources :users
	resources :sessions

	# User Dashboard
	get '/dashboard', to: 'users#dashboard', as: 'dashboard'

	namespace :admin do
		get '/', to: 'dashboard#index', as: 'admin_dashboard' # admin dashboard
		get '/products', to: 'product#index', as: 'products' # all products
		get '/product/add', to: 'product#add', as: 'add_product' # add products
		post '/product/create', to: 'product#create' # add products posts
		get '/product/edit/:id', to: 'product#edit' #product edit
		post '/product/edit/:id', to: 'product#edit' # edit products posts
		post '/product/img/upload/:id', to: 'product#upload' # upload product image
	end

end

