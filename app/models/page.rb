class Page < ApplicationRecord
  
	mount_uploader :bgimage, ImageUploader
  belongs_to :screen
  belongs_to :skin_template
  belongs_to :carte
  has_many :sections 

  def skin_template_name
  	skin_template != nil ? skin_template.name : 'No Template Defined'
  end

  def carte_name
  	carte != nil ? carte.name : 'Carte No Defined'
  end


end
