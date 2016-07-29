class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :result
      t.date :date
      t.string :winner

      t.timestamps null: false
    end
  end
end
