class CreateTypeSections < ActiveRecord::Migration[5.0]
  def change
    create_table :type_sections do |t|
      t.string :name, null: false
      t.boolean :active
      t.string :abrev
      t.string :tag

      t.timestamps
    end
  end
end
