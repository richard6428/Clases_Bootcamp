class User < ActiveRecord::Base
	hans_one :account
	has_many :registers
	has_many :books, through: :registers
end
