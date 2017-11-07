class CarteComponent < ApplicationRecord

	has_many :composites, class_name: "CarteComponent", foreign_key: "parent_id" 

	belongs_to :parent, class_name: "CarteComponent"

	scope :cartes, -> { where(type: 'Carte') } 
	scope :carte_items, -> { where(type: 'CarteItem') }

	#hace que la STI funcione, cada subclase debe estar definida aqui
	def self.types
		%w(CarteItem Carte)
	end

	

end
