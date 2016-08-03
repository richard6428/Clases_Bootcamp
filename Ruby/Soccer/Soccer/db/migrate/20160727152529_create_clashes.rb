class CreateClashes < ActiveRecord::Migration
  def change
    create_table :clashes do |t|
      t.integer :match_id
      t.integer :team_id

      t.timestamps null: false
    end
  end
end
