class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :name, null: false
      t.integer :featured
      t.references :products, index: true
      t.timestamps
    end
  end
end
