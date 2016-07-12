class CreateAparments < ActiveRecord::Migration
  def change
    create_table :aparments do |t|
      t.string :num_floor
      t.string :elevator
      t.string :area
      t.string :num_baths
      t.string :balcony

      t.timestamps null: false
    end
  end
end
