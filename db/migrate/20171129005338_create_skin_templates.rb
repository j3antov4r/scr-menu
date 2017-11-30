class CreateSkinTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :skin_templates do |t|
      t.string :name
      t.boolean :active
      t.text :description

      t.timestamps
    end
  end
end
