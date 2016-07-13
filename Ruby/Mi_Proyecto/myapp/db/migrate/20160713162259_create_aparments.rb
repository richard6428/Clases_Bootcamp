class CreateAparments < ActiveRecord::Migration
  def change
    create_table :aparments do |t|
      t.string :num_aparment

      t.timestamps null: false
    end
  end
end
