require 'faker'

FactoryGirl.define do
  factory :cliente do
    logo { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','images','foto.jpg'))}
    link { Faker::Internet.url }
  end
end
