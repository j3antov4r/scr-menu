class AddCompositeColsToCarteComponents < ActiveRecord::Migration[5.0]
  def change
  	add_column :carte_components, :lineage, :string
  	add_reference :carte_components, :parent, index: true
  end
end
