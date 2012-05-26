class PaginasController < ApplicationController
  def home
  @titulo = "Home" 
  end

  def contacto
  @titulo = "Contacto"
  end
  
  def about
  @titulo = "About"
  end
  def ayuda
    @titulo = "Ayuda"
  end
  
end
