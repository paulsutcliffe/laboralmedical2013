require 'faker'

FactoryGirl.define do
  factory :cliente do
    logo "MyString"
    link { Faker::Internet.url }
  end
end
