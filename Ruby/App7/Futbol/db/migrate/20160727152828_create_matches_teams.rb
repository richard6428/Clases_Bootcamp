class CreateMatchesTeams < ActiveRecord::Migration
  def change
    create_table :matches_teams do |t|
      t.integer :team_id
      t.integer :match_id
    end
  end
end
