require 'faker'

FactoryGirl.define do
  factory :servicio do
    nombre { Faker::Name.name }
    icono "MyString"
    descripcion { Faker::Lorem.paragraph }
  end
end
