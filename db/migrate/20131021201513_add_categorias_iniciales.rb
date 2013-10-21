#coding: utf-8
class AddCategoriasIniciales < ActiveRecord::Migration
  def up
    Categoria.create(nombre: "Servicios")
    Categoria.create(nombre: "Consultoría")
  end

  def down
    Categoria.delete_all
  end
end
