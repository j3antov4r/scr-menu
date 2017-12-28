class Page < ApplicationRecord
  
	mount_uploader :bgimage, ImageUploader
  belongs_to :screen
  has_many :sections 

  def skin_template_name
  	skin_template_ref != nil ? SkinTemplate.find(skin_template_ref).name : 'No Template Defined'
  end

  


end
