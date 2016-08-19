class CreateClassXStudents < ActiveRecord::Migration
  def change
    create_table :class_x_students do |t|
      t.integer :class_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
