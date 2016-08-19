class Inventory < ActiveRecord::Base
	belongs_to :classroom
	has_many :loans
end
