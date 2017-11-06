class AddTypeToMenuComponent < ActiveRecord::Migration[5.0]
  def change
  	add_column :menu_components, :type, :string 
  end
end
