class AddProportionToScreens < ActiveRecord::Migration[5.0]
  def change
  	add_column :screens, :proportion, :float, :default => 1.0 
  	add_column :screens, :efect_transition, :string, :default => 'none'
  end
end
