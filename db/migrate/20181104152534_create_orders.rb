class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :orderId
      t.string :customerId
      t.string :orderName
      t.string :paymentId
      t.text :orderDate
      t.text :shipDate
      t.string :paid
      t.text :paymentDate

      t.timestamps
    end
  end
end
