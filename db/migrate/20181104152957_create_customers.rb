class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :customerId
      t.string :firstName
      t.string :lastName
      t.string :address
      t.string :city
      t.string :state
      t.string :postalCode
      t.string :country
      t.string :phone
      t.string :email
      t.string :password
      t.string :creditCardType
      t.string :creditCardNumber
      t.string :creditCardAddress
      t.string :shipAddress
      t.string :dateEntered

      t.timestamps
    end
  end
end
