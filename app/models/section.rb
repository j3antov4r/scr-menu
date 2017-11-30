class Section < ApplicationRecord
  belongs_to :page, dependent: :destroy
  belongs_to :skin_template_section
end
