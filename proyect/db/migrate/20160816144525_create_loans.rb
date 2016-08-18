class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.integer :document
      t.integer :inventory_id
      t.text :observations

      t.timestamps null: false
    end
  end
end
