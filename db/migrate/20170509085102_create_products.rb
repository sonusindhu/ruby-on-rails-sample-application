class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :sku
      t.text :description
      t.text :short_description
      t.string :available_from
      t.string :available_to
      t.string :price
      t.integer :category_id
      t.integer :status
      t.references :categories, index: true
      t.timestamps
    end
  end
end
