class Post < ActiveRecord::Base
	mount_uploader :image, MediaUploader
	belongs_to :user
end
