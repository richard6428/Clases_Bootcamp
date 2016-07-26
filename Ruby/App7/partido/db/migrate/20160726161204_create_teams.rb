class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :id_team
      t.string :name
      t.string :champion

      t.timestamps null: false
    end
  end
end
