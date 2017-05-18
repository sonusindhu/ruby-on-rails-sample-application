class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :slug
      t.integer :parent
      t.integer :products_count
      t.integer :status
      t.references :products, index: true
      t.timestamps
    end
  end
end
