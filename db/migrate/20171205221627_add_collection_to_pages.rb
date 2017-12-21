class AddCollectionToPages < ActiveRecord::Migration[5.0]
  def change
  	add_reference :pages, :carte, foreign_key: true  
  end
end
