class AddSuppliersToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :supliers, foreign_key: true
  end
end
