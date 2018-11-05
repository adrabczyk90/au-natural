class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :productId, null: false
      t.string :productTitle, null: false
      t.text :productDescription
      t.string :supplierId, null: false
      t.string :categoryId, null: false
      t.decimal :price, precision: 15, scale: 2, null: false
      t.string :size
      t.string :color
      t.string :picture

      t.timestamps
    end
  end
end
