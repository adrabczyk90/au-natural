class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.string :orderId, null: false
      t.string :productId, null: false
      t.string :orderNumber, null: false
      t.decimal :price, precision: 15, scale: 2, null: false
      t.string :quantity, null: false
      t.string :discount
      t.decimal :total, null: false
      t.string :orderDetailId, null: false

      t.timestamps
    end
  end
end
