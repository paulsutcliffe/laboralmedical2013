require 'faker'

FactoryGirl.define do
  factory :alianza do
    nombre { Faker::Company.name }
    logo { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','images','logo.jpg'))}
  end
end
