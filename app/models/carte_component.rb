class CarteComponent < ApplicationRecord

	scope :cartes, -> { where(type: 'Carte') } 
	scope :carte_items, -> { where(type: 'CarteItem') }

	def self.types
		%w(CarteItem Carte)
	end
end
