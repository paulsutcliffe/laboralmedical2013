require 'faker'

FactoryGirl.define do
  factory :miembro do
    nombre { Faker::Name.name }
    puesto { Faker::Company.suffix }
    descripcion { Faker::Lorem.paragraph }
  end
end
