require 'faker'

FactoryGirl.define do
  factory :categoria do
    nombre { Faker::Name.name }
  end
end
