class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :name, null: false
      t.boolean :active, default: true
      t.string :position
      t.string :class
      t.integer :order
      t.string :tag
      t.references :type_section, foreign_key: true
      t.references :page, foreign_key: true

      t.timestamps
    end
  end
end
