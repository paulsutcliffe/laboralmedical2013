require 'faker'

FactoryGirl.define do
  factory :miembro do
    nombre { Faker::Name.name }
    puesto { Faker::Company.suffix }
    descripcion { Faker::Lorem.paragraph }
    foto { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','images','foto.jpg'))}
  end
end
