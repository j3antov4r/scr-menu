class AddCarteReferenceToPages < ActiveRecord::Migration[5.0]
  def change
  	add_reference :pages, :carte 
  end
end
