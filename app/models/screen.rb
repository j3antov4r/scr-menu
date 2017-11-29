class Screen < ApplicationRecord

	mount_uploader :bgimage, ImageUploader
	
  belongs_to :display, dependent: :destroy

  has_many :pages 
end
