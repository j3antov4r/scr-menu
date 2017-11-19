class AddActiveToCarteComponets < ActiveRecord::Migration[5.0]
  def change
  	add_column :carte_components, :active, :boolean 
  	
  end
end
