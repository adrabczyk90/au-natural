class AddShippersToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :shippers, foreign_key: true, null: false
  end
end
