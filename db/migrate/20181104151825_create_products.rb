class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :productId
      t.string :productTitle
      t.text :productDescription
      t.string :supplierId
      t.string :categoryId
      t.decimal :price
      t.string :size
      t.string :color
      t.string :picture

      t.timestamps
    end
  end
end
