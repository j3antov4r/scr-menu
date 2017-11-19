# = aplication_controller.rb
#
# Autor::   Jean Tovar
# Web::     http://www.togohbusiness.com
#
#
#
# === Clase ApplicationController
#
# Clase base perteneciente al proyecto Screen-L-Carte (c) 2017 by Togoh Business & Solutions INC
# * metodo initialize
# * metodo saludar
#
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_globals
  
  def set_globals
  	@items_per_pages = 12
  end
end
