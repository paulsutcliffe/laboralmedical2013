#coding: utf-8
require 'factory_girl'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB
DatabaseCleaner.clean

FactoryGirl.create :admin

Categoria.create(nombre: "Servicios")
Categoria.create(nombre: "Consultoría")

12.times do
  FactoryGirl.create :alianza
end

2.times do
  FactoryGirl.create :banner
end

12.times do
  FactoryGirl.create :cliente
end

12.times do
  FactoryGirl.create :contacto
end

12.times do
  FactoryGirl.create :miembro
end

12.times do
  FactoryGirl.create :noticia
end

12.times do
  FactoryGirl.create :servicio
end
