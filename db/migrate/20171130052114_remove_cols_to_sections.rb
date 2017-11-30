class RemoveColsToSections < ActiveRecord::Migration[5.0]
  def change
  	rename_column :sections, :prorpety, :property
  	remove_reference :sections, :type_section
  	
  end
end
