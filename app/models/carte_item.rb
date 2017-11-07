class CarteItem < CarteComponent

	#Validaciones propias de Carte Item
	validates :price, presence: true

	validates :name, length: {minimum: 3, maximum: 80}
	validates :description, length: {minimum: 3}


end