class InicioController < ApplicationController
  def index
    @clientes = Cliente.limit(4)
    @banners = Banner.all
  end
end
