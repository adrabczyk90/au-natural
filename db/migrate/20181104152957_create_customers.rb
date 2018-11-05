class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :customerId, null: false
      t.string :firstName, null: false
      t.string :lastName, null: false
      t.string :address
      t.string :city
      t.string :state
      t.string :postalCode
      t.string :country
      t.string :phone, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.string :creditCardType
      t.string :creditCardNumber, null: false
      t.string :creditCardAddress
      t.string :shipAddress
      t.string :dateEntered

      t.timestamps
    end
  end
end
