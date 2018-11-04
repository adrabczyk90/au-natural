class AddCustomersToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :customers, foreign_key: true
  end
end
