class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :classroomType
      t.integer :classroomNumber
      t.integer :capacity
      t.integer :uva_id

      t.timestamps null: false
    end
  end
end
