class AddPublishedToCarteComponents < ActiveRecord::Migration[5.0]
  def change
  	add_column :carte_components, :published, :boolean, :default=> true
  end
end
