class CreateDisplays < ActiveRecord::Migration[5.0]
  def change
    create_table :displays do |t|
      t.string :name, :null => false
      t.boolean :active, :default => true
      t.integer :order
      t.string :resolution

      t.timestamps
    end
  end
end
