class SkinTemplate < ApplicationRecord
	has_many :skin_template_sections
	has_many :pages 
end
