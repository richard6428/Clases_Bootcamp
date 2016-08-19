class Lesson < ActiveRecord::Base
	belongs_to :classroom
	belongs_to :teacher
	has_many :class_x_students
	has_many :students, :through :class_x_student
end
