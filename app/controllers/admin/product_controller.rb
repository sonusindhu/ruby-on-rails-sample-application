class Admin::ProductController < ApplicationController
	skip_before_action :verify_authenticity_token, :only => [:upload,:imageDelete]
	before_action :authenticate_admin, :only => [:index,:add,:create]
	layout "admin"
	def index
		@categories = Category.select("id, name")
		@products = Product.all
	end

	def add
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			flash[:notice] = "Product added successfully"
			redirect_to("/admin/product/edit/#{@product.id}")
		else
			render "add"
		end
	end


	def edit
		@product = Product.find(params[:id])
		if params.include?(:product)
			Product.update(product_params)
			flash[:notice] = "Product updated successfully"
			redirect_to("/admin/product/edit/#{@product.id}")
		end
	end

	def upload
		@product = Product.find(params[:id])
		if @product
			uploaded_io = params[:file]
			@images = Image.new
			file_name = uploaded_io.original_filename
    		file_type = file_name.split('.').last
		    new_name_file = Time.now.to_i
		    randomNum = Random.rand(100...99999)
		    new_file_name_with_type = "#{randomNum}_" + "#{new_name_file}." + file_type

			
  			File.open(Rails.root.join('app/assets', 'uploads', new_file_name_with_type), 'wb') do |file|
    			file.write(uploaded_io.read)
	        end
	        
	        @images.name = new_file_name_with_type;
	        @images.product_id = params[:id];
	        @images.featured = 0;
	        @images.save

	        my_array = {'result'=>'OK'}
			render :json => my_array
		else
			render :json => []
		end
		
	end


	def imageDelete
		@image = Image.find(params[:id])
		if @image
			File.open(Rails.root.join('app/assets', 'uploads', @image.name)) do |f|
			  File.delete(Rails.root.join('app/assets', 'uploads', @image.name))
			end
			flash[:notice] = "Product image deleted!"
			@image.destroy
			my_array = {'result'=>'OK'}
			render :json => my_array
		else
			my_array = {'result'=>'error'}
			render :json => []	
		end
	end


	def product_params
		params.require(:product).permit(:title,:description, :short_description, :category_id, :available_from, :available_to, :sku, :price, :status)
	end

end