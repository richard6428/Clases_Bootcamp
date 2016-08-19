class Employee < ActiveRecord::Base
	has_many :comments
	belongs_to :uva
	has_many :articles
end
