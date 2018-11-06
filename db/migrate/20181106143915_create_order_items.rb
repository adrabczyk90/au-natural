class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.string :quantity, null: false, default: 0
      t.string :price, null: false, precision: 15, scale: 2

      t.timestamps
    end
  end
end
