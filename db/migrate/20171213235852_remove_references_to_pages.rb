class RemoveReferencesToPages < ActiveRecord::Migration[5.0]
  def change
  	remove_reference :pages, :carte
  	remove_reference :pages, :cartes 
  end
end
