class Comment < ActiveRecord::Base
	belongs_to :employee
	belongs_to :user_blog
	belongs_to :article
end
