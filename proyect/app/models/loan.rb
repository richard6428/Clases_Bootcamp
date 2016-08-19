class Loan < ActiveRecord::Base
	belongs_to :inventory
	belongs_to :teacher
end
