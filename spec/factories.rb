FactoryGirl.define do
  factory :category do
    name Faker::Lorem.word
    description Faker::Lorem.words(6)
  end
end
