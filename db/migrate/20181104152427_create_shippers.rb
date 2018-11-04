class CreateShippers < ActiveRecord::Migration[5.2]
  def change
    create_table :shippers do |t|
      t.string :shipperId
      t.string :companyName
      t.string :phone

      t.timestamps
    end
  end
end
