class UserBlog < ActiveRecord::Base
	has_many :comments
end
