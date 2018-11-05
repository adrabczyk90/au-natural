class AddSuppliersToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :suppliers, foreign_key: true, null: false
  end
end
