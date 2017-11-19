class Section < ApplicationRecord
  belongs_to :type_section
  belongs_to :page
end
