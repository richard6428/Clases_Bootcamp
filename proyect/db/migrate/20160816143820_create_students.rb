class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :document
      t.string :names
      t.string :lastname
      t.integer :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
