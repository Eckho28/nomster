class Place < ActiveRecord::Base
	mount_uploader :profilepicture, ProfilepictureUploader
	belongs_to :user
	has_many :comments
	has_many :pics
	geocoded_by :address
	after_validation :geocode
	validates :name, :presence => true, :length => { :minimum => 3 }
	validates :address, :description, :presence => true
end
