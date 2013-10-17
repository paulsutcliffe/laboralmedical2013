require 'faker'

FactoryGirl.define do
  factory :contacto do
    nombre { Faker::Name.name }
    email { Faker::Internet.email }
    telefono { Faker::PhoneNumber.cell_phone }
    mensaje { Faker::Lorem.paragraph }
  end
end
