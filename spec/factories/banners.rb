require 'faker'

FactoryGirl.define do
  factory :banner do
    imagen "MyString"
    encabezado { Faker::Lorem.sentence }
    link "MyString"
  end
end
