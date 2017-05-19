class Product < ApplicationRecord
	belongs_to :categories, polymorphic: true

	validates :title, :presence => true, :length => { :in => 3..255 }
	validates :short_description, :presence => true, :length => { :in => 3..255 }
	validates :description, :presence => true, :length => { :in => 3..255 }
	validates :sku, :presence => true, :uniqueness => true, :length => { :in => 3..15 }
	validates :available_from, :presence => true
	validates :available_to, :presence => true
	validates :price, :presence => true
	validates :status, :presence => true
	validates :categories_id, :presence => true

end
