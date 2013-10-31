require 'faker'

FactoryGirl.define do
  factory :banner do
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','images','img-slide.jpg'))}
    encabezado { Faker::Lorem.sentence }
    link { Faker::Internet.url }
  end
end
