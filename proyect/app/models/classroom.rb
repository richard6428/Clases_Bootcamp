class Classroom < ActiveRecord::Base
	belongs_to :uva
	has_many :inventories
	has_many :lessons
end
