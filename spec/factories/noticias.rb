require 'faker'

FactoryGirl.define do
  factory :noticia do
    titulo { Faker::Lorem.words }
    subtitulo { Faker::Lorem.words }
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','images','foto.jpg'))}
    contenido { Faker::Lorem.paragraph }
  end
end
