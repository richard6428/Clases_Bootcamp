class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :guest
      t.string :janitors
      t.string :towers
      t.string :aparment

      t.timestamps null: false
    end
  end
end
