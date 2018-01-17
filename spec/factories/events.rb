FactoryBot.define do
  factory :room do
    name              { Faker::Lorem.words(1)}
    location          { Faker::Lorem.city(1)}
    starts_at         { Faker::Date.forward(20)}
    ends_at           { Faker::Date.forward(22)}
    description       { Faker::Lorem.sentence(40) }
    capacity          { Faker::Number.number(10)}
    includes_foods    true
    includes_drinks   true
    price             { Faker::Commerce.price }
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
