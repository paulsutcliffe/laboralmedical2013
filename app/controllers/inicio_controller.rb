class InicioController < ApplicationController
  def index
    @clientes = Cliente.random
    @banners = Banner.all
  end
end
