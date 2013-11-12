class Categoria < ActiveRecord::Base
  attr_accessible :nombre

  has_many :servicios
  TIPOS = ['Servicios','Consultorias']
end
