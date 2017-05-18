class Product < ApplicationRecord
	belongs_to :categories, polymorphic: true
end
