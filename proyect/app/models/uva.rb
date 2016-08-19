class Uva < ActiveRecord::Base
	has_many :employees
	has_many :classrooms
end
