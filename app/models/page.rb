class Page < ApplicationRecord
  
	mount_uploader :bgimage, ImageUploader
  belongs_to :screen, dependent: :destroy
  belongs_to :skin_template
  has_many :sections 
end
