class Section < ApplicationRecord
  belongs_to :page
  belongs_to :skin_template_section

  def type_section
  	self.skin_template_section.type_section.name
  end

  def order
  	self.skin_template_section.order
  end

  def class_styling
  	self.skin_template_section.class_styling
  end

  def template_name
  	self.skin_template_section.skin_template.name 
  end

end
