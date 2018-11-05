class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :orderId, null: false
      t.string :customerId, null: false
      t.string :orderName
      t.string :paymentId, null: false
      t.text :orderDate
      t.text :shipDate
      t.string :paid, null: false
      t.text :paymentDate

      t.timestamps
    end
  end
end
