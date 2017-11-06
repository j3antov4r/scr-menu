class CreateCarteComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :carte_components do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :image
      t.string :type

      t.timestamps
    end
  end
end
