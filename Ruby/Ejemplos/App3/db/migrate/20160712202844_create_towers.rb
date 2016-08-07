class CreateTowers < ActiveRecord::Migration
  def change
    create_table :towers do |t|
      t.string :name
      t.string :level

      t.timestamps null: false
    end
  end
end
