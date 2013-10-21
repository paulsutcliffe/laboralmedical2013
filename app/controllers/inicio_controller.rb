class InicioController < ApplicationController
  def index
    @clientes = Cliente.limit(6)
    @banners = Banner.all
  end
end
