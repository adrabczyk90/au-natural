class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
      create_table :order_items do |t|
      t.belongs_to :order
      t.belongs_to :product
      t.integer :quantity
      t.decimal :price, precision: 15, scale: 2

      t.timestamps
    end

    add_foreign_key :order_items, :orders, name: 'fk_order_items_to_order'
    add_foreign_key :order_items, :products, name: 'fk_order_items_to_product'
  end
end