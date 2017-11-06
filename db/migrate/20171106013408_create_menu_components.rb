class CreateMenuComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_components do |t|
      t.string :name
      t.text :description
      t.string :cal_info
      t.float :price
      t.string :icon
      t.string :imagen

      t.timestamps
    end
  end
end
