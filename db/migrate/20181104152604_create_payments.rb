class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :paymentId, null: false
      t.string :paymentType
      t.string :allowed

      t.timestamps
    end
  end
end
