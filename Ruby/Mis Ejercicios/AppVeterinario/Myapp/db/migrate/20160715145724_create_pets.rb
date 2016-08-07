class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type_of_pet
      t.integer :age

      t.timestamps null: false
    end
  end
end
