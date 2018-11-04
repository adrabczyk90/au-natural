class AddOrderDetailsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :order_details, foreign_key: true
  end
end
