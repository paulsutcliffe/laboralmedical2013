class CategoriasController < InheritedResources::Base

  def consultorias
    @servicios = Servicio.where("categoria_id = ?", 2)
  end

  def servicios
    @servicios = Servicio.where("categoria_id = ?", 1)
  end
end
