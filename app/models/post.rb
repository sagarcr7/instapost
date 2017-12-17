class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
  	belongs_to :user
  	mount_uploader :photo, PhotoUploader
 	 delegate :photo, :name, to: :user, prefix: true 
	acts_as_votable
end
