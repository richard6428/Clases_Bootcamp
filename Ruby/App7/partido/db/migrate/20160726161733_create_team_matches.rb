class CreateTeamMatches < ActiveRecord::Migration
  def change
    create_table :team_matches do |t|
      t.integer :id_match
      t.integer :id_team

      t.timestamps null: false
    end
  end
end
