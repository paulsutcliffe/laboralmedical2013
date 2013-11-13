require 'faker'

FactoryGirl.define do
  factory :miembro do
    nombre { Faker::Name.first_name }
    apellido { Faker::Name.last_name }
    puesto { Faker::Company.suffix }
    descripcion { Faker::Lorem.paragraph }
    foto { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','images','foto.jpg'))}
  end
end
