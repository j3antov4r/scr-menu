class Page < ApplicationRecord
  
	mount_uploader :bgimage, ImageUploader
  belongs_to :screen

  has_many :sections 
end
