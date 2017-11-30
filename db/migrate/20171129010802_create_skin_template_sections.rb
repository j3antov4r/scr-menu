class CreateSkinTemplateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :skin_template_sections do |t|
      t.integer :order
      t.references :type_section, foreign_key: true
      t.references :skin_template, foreign_key: true
      t.string :class_styling

      t.timestamps
    end
  end
end
