class Carte < CarteComponent

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
		#CarteComponent.find_by()
	end

end