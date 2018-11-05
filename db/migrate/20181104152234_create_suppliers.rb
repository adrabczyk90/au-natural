class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :supplierId, null: false
      t.string :companyName, null: false
      t.string :contactName
      t.string :contactTitle
      t.string :address
      t.string :city
      t.string :state
      t.string :postalCode
      t.string :country
      t.string :phone, null: false
      t.string :email, null: false
      t.string :url
      t.string :customerId, null: false

      t.timestamps
    end
  end
end
