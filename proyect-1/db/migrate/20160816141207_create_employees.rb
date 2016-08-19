class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :document
      t.string :name
      t.string :lastname
      t.integer :phone
      t.date :birthDate
      t.string :email
      t.string :position
      t.integer :uva_id

      t.timestamps null: false
    end
  end
end
