class Student < ActiveRecord::Base
	has_many :class_x_students
	has_many :lessons, :through :class_x_student
end
