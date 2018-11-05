class AddProductsToOrderDetails < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_details, :products, foreign_key: true, null: false
  end
end
