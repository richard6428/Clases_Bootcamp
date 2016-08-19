class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :reference
      t.string :productType
      t.string :brand
      t.string :quantity
      t.date :purchaseDate
      t.string :warranty
      t.integer :classroom_id

      t.timestamps null: false
    end
  end
end
