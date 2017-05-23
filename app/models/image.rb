class Image < ApplicationRecord
	belongs_to :product

	before_save :before_save_image
	after_save :after_save_image
	def before_save_image
	  
	end

	def after_save_image
	  
	end

end
