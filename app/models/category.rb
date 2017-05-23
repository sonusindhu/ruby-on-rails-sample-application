class Category < ApplicationRecord
	has_many :products, as: :products, dependent: :destroy
end
