require 'faker'

FactoryGirl.define do
  factory :noticia do
    titulo { Faker::Lorem.words }
    subtitulo { Faker::Lorem.words }
    imagen "MyString"
    contenido { Faker::Lorem.paragraph }
  end
end
