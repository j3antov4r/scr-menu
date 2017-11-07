class CarteComponent < ApplicationRecord

	has_many :composites, class_name: "CarteComponent", foreign_key: "parent_id" 

	belongs_to :parent, class_name: "CarteComponent"

	scope :cartes, -> { where(type: 'Carte') } 
	scope :carte_items, -> { where(type: 'CarteItem') }

	# Hace que la STI funcione, cada subclase debe estar definida aqui
	def self.types
		%w(CarteItem Carte)
	end

	# Validaciones comunes para todos los CarteComponents
	validates :name, :description, presence: true


	# Metodos Composite Pattern, debe implementarse en la clase Composite
	def add(menu_component)
		raise UnssoportedOperationError, "this operation must be implemented in subclasses"
	end

	def remove(menu_component)
		raise UnssoportedOperationError, "this operation must be implemented in subclasses"
	end

	def get_child(i)
		raise UnssoportedOperationError, "this operation must be implemented in subclasses"
	end

end
