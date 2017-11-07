class Carte < CarteComponent

	# Validaciones
	validates :name, length: {minimum: 4, maximum: 50}
	validades :description, length: {minimum: 4, maximum: 140}

	# Metodos Composite Pattern
	def add(menu_component)
		menu_component.parent = self
		menu_component.save
		menu_component.lineage= self.lineage + "-" + menu_component.id.to_s 
		menu_component.save 
	end

	def remove(menu_component)
		if menu_component.parent = self
			menu_component.destroy
		end
	end

	def get_child(i)
		#mientras no tengamos propiedad orden de CarteComponent haremos asi
		my_child= self.composites.limit(1).offset(i-1);
	end

end