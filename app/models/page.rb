class Page < ApplicationRecord
  belongs_to :screen

  has_many :sections 
end
