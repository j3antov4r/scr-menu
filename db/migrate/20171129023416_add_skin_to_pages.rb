class AddSkinToPages < ActiveRecord::Migration[5.0]
  def change
  	#modifica las tablas Pages, y Sections 
  	add_reference :pages, :skin_template, foreign_key: true
  	add_reference :sections, :skin_template_section, foreign_key: true
  	remove_foreign_key :sections, :type_sections 
  	remove_column :sections, :name 
  	add_column :sections, :prorpety, :string
  	add_column :sections, :method, :string
  	add_column :sections, :static, :string
  	add_column :sections, :collection, :string 
  end
end
