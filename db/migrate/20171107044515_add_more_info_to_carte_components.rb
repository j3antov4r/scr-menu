class AddMoreInfoToCarteComponents < ActiveRecord::Migration[5.0]
  def change
  	add_column :carte_components, :calories, :string
  	add_column :carte_components, :tags, :string
  	add_column :carte_components, :vegetarian, :boolean
  end
end
