class Screen < ApplicationRecord

	mount_uploader :bgimage, ImageUploader
	
  belongs_to :display

  has_many :pages 
end
