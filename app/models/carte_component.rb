class CarteComponent < ApplicationRecord

	mount_uploader :image, ImageUploader

	#la clase no puede ser abstracta para STI

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

	#limitar el accesoa BD con un cache para las rutas de ancestros
 	@@cache = Hash.new

 	def lookup_parent(parent)
 		if @@cache.has_key?(parent)
 			cp= @@cache[parent]
 		else
 			cp = CarteComponent.find(parent)
 			@@cache.store(cp.id, cp)
 		end
 		cp
 	end

	def my_path
		my_path_str = "/"
		my_path_indexes= lineage.split("-").map { |s| s.to_i }
		my_path_indexes.each  do |i|
			cp = lookup_parent(i)
			my_path_str = cp.type == 'Carte'? my_path_str + cp.name + "/" : my_path_str + cp.name 
		end
		my_path_str
	end

	def my_rel_path
		my_path_str = "/"
		my_path_indexes= lineage.split("-").map { |s| s.to_i }
		len = my_path_indexes.length
		j = 1;
		while j < len - 1 do
			i = my_path_indexes[j]
			cp = lookup_parent(i)
			my_path_str = cp.type == 'Carte'? my_path_str + cp.name + "/" : my_path_str + cp.name 
			j= j + 1
		end
		my_path_str
	end

	

end
