class CreateScreens < ActiveRecord::Migration[5.0]
  def change
    create_table :screens do |t|
      t.string :name, :null=> false
      t.boolean :active, :default => true
      t.integer :order
      t.string :bgcolor
      t.string :bgimage
      t.references :display, foreign_key: true

      t.timestamps
    end
  end
end
