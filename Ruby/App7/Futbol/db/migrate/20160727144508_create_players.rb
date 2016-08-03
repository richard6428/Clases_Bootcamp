class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :cedula
      t.integer :team_id
      t.string :name
      t.integer :age
      t.string :city

      t.timestamps null: false
    end
  end
end
