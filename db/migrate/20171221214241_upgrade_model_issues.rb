class UpgradeModelIssues < ActiveRecord::Migration[5.0]
  def change
  	remove_reference :pages, :carte
  	remove_reference :pages, :skin_template

  	remove_column :sections, :tag
  	remove_column :sections, :collection
  	remove_column :sections, :static
  	remove_column :sections, :type_class
  	remove_column :sections, :position
  	remove_column :sections, :property
  	remove_column :sections, :method

  	add_column :pages, :skin_template_ref, :integer
  	add_column :sections, :font_color, :string
  	add_column :sections, :font_size, :string
  	add_column :sections, :static_image, :string
  	add_column :sections, :static_text, :string
  	add_column :sections, :type, :string
  	add_column :sections, :dinamic_ref, :integer
  	add_column :sections, :dinamic_expression, :string
  end
end
