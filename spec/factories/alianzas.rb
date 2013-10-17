require 'faker'

FactoryGirl.define do
  factory :alianza do
    nombre { Faker::Company.name }
  end
end
