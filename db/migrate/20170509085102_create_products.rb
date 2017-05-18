class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :slug
      t.text :description
      t.integer :category_id
      t.integer :status
      t.references :categories, index: true
      t.timestamps
    end
  end
end
