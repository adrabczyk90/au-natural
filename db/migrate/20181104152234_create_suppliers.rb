class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :supplierId
      t.string :companyName
      t.string :contactName
      t.string :contactTitle
      t.string :address
      t.string :city
      t.string :state
      t.string :postalCode
      t.string :country
      t.string :phone
      t.string :email
      t.string :url
      t.string :customerId

      t.timestamps
    end
  end
end
