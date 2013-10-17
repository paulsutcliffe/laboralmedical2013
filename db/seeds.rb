require 'factory_girl'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB
#DatabaseCleaner.clean

#FactoryGirl.create :admin

12.times do
  FactoryGirl.create :alianza
end

12.times do
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
