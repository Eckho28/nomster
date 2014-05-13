class Pic < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	belongs_to :user
	belongs_to :place
	default_scope order('created_at DESC')
end
