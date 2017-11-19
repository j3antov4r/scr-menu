module CarteComponentsHelper
	#truco para los Path dinamicos en STI
	def sti_carte_component_path(type = "carte", carte_component = nil, action= nil)
		send "#{format_sti(action, type, carte_component)}_path", carte_component
	end

 	def format_sti(action, type, carte_component)
 		action || carte_component ? "#{format_action(action)}#{type.underscore}" : "#{type.underscore.pluralize}"
 	end

 	def format_action(action)
 		action ? "#{action}_" : ""
 	end

 	
end

