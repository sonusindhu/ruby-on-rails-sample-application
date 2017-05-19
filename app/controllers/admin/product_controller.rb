class Admin::ProductController < ApplicationController

  before_action :authenticate_admin, :only => [:index,:add,:create]
  layout "admin"
  def index
  	@categories = Category.select("id, name")
  end

  def add
  	
  end

  def create
  	@product = Product.new(product_params)
  	if @product.save
  		flash[:notice] = "Product added successfully"
  		redirect_to request.referer || root_path
  	end
  	render "add"
  end


  def product_params
  	params.require(:product).permit(:title,:description, :short_description, :categories_id, :available_from, :available_to, :sku, :price, :status)
  end

end