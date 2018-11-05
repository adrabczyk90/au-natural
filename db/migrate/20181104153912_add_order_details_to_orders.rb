class AddOrderDetailsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :order_details, foreign_key: true, null: false
  end
end
