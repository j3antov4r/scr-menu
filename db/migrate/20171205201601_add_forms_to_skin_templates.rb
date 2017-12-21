class AddFormsToSkinTemplates < ActiveRecord::Migration[5.0]
  def change
  	add_column :skin_templates, :edit_form, :string
  	add_column :skin_templates, :showroom, :string 
  end
end
