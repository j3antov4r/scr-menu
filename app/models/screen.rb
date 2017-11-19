class Screen < ApplicationRecord
  belongs_to :display

  has_many :pages 
end
