require 'faker'

FactoryGirl.define do
  factory :servicio do
    nombre { Faker::Name.name }
    icono { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','images','foto.jpg'))}
    descripcion { Faker::Lorem.paragraph }
  end
end
