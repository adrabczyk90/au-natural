class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :categoryId, null: false
      t.string :categoryName, null: false
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
