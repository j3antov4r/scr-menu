class SkinTemplateSection < ApplicationRecord
  belongs_to :type_section, dependent: :destroy 
  belongs_to :skin_template, dependent: :destroy

  has_many :sections
end
