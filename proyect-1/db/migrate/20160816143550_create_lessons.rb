class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :teacher
      t.string :purpose
      t.date :initialdate
      t.date :finalDate
      t.integer :quota
      t.integer :classroomNumber
      t.integer :students_id
      t.integer :classroom_id
      t.integer :teacher_id
      t.text :observations

      t.timestamps null: false
    end
  end
end
