class Product < ApplicationRecord
	belongs_to :category

	validates :title, :presence => true, :length => { :in => 3..255 }
	validates :short_description, :presence => true, :length => { :in => 3..255 }
	validates :description, :presence => true, :length => { :in => 3..10000 }
	validates :sku, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
	validates :available_from, :presence => true
	validates :available_to, :presence => true
	validates :price, :presence => true
	validates :status, :presence => true
	validates :category_id, :presence => true


	before_save :before_save_product
	after_save :after_save_product
	def before_save_product
	  if available_from.present?
	    self.available_from= available_from.to_time
	  end
	  if available_to.present?
	    self.available_to= available_to.to_time
	  end
	end

	def after_save_product
	  
	end

end
