class Article < ActiveRecord::Base
	belongs_to :employee
	has_many :comments
end
