class CreateVets < ActiveRecord::Migration
  def change
    create_table :vets do |t|
      t.string :name
      t.string :lastname
      t.string :turno

      t.timestamps null: false
    end
  end
end
