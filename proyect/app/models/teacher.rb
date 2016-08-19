class Teacher < ActiveRecord::Base
	has_many :loans
	has_many :lessons
end
