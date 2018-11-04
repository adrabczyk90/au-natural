class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.string :orderId
      t.string :productId
      t.string :orderNumber
      t.decimal :price
      t.string :quantity
      t.string :discount
      t.decimal :total
      t.string :orderDetailId

      t.timestamps
    end
  end
end
