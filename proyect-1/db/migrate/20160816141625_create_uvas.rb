class CreateUvas < ActiveRecord::Migration
  def change
    create_table :uvas do |t|
      t.string :nameUva
      t.string :address
      t.string :commune
      t.integer :phone
      t.string :manager
      t.string :email

      t.timestamps null: false
    end
  end
end
