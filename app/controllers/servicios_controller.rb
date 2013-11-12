#coding: utf-8
class ServiciosController < InheritedResources::Base
  before_filter :authenticate_admin!
  belongs_to :categoria
  before_filter :find_categoria

  def find_categoria
    if params[:categoria_id]
      @categoria = Categoria.find(params[:categoria_id])
    else
      @categoria = Servicio.find(params[:id]).categoria
    end
  end

  def new
    @servicio = Servicio.new
    if params[:categoria_id] == '2'
      @titulo = 'Nueva Consultoría'
    else
      @titulo = 'Nuevo Servicio'
    end
  end

  def create
    if @categoria.id == 1
      create! { servicios_path }
    else
      create! { consultorias_path }
    end
  end

  def update
    if @categoria.id == 1
      update! { servicios_path }
    else
      update! { consultorias_path}
    end
  end

  def destroy
    if @categoria.id == 1
      destroy! { servicios_path }
    else
      destroy! { consultorias_path }
    end
  end
end
