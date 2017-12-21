class Section < ApplicationRecord
  belongs_to :page
  belongs_to :skin_template_section

  def name
  	self.skin_template_section.type_section.name
  end
end
