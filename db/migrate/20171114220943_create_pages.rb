class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :name, null: false
      t.boolean :active, default: true
      t.integer :order
      t.string :bgcolor
      t.string :bgimage
      t.references :screen, foreign_key: true

      t.timestamps
    end
  end
end
