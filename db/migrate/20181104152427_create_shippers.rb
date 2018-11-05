class CreateShippers < ActiveRecord::Migration[5.2]
  def change
    create_table :shippers do |t|
      t.string :shipperId, null: false
      t.string :companyName, null: false
      t.string :phone, null: false

      t.timestamps
    end
  end
end
