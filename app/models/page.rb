class Page < ApplicationRecord
  
	mount_uploader :bgimage, ImageUploader
  belongs_to :screen, dependent: :destroy

  has_many :sections 
end
