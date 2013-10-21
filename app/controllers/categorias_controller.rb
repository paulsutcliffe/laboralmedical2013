class CategoriasController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:consultorias, :servicios]

  def consultorias
    @servicios = Servicio.where("categoria_id = ?", 2)
  end

  def servicios
    @servicios = Servicio.where("categoria_id = ?", 1)
  end
end
