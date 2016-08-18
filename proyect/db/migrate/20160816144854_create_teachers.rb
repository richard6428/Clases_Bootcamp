class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.integer :document
      t.string :name
      t.string :lastname
      t.integer :phone
      t.string :email
      t.string :class

      t.timestamps null: false
    end
  end
end
