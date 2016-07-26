class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :id_player
      t.integer :id_team
      t.string :name
      t.string :city

      t.timestamps null: false
    end
  end
end
