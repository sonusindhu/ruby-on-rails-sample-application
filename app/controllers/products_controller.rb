class ProductsController < ApplicationController
	#before_action :authenticate_user, :only => [:dashboard]
	#protect_from_forgery with: :exception
	layout "main"
	def index
			
	end

	def view
		@product = Product::find_by(sku: params[:sku])
	end
end
