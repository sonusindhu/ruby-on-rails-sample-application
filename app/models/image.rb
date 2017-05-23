class Image < ApplicationRecord
	belongs_to :product

	before_save :before_save_image
	after_save :after_save_image
	after_destroy :delete_all_image
	def before_save_image
	  
	end

	def after_save_image
	  
	end

	def delete_all_image
		File.open(Rails.root.join('app/assets', 'uploads', self.name)) do |f|
		  File.delete(Rails.root.join('app/assets', 'uploads', self.name))
		end
	end

end
