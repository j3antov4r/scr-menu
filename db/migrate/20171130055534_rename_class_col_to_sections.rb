class RenameClassColToSections < ActiveRecord::Migration[5.0]
  def change
  	rename_column :sections, :class, :type_class
  end
end
