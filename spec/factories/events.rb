FactoryGirl.define do
  factory :event do
      name "House"
      description { Faker::Lorem.sentence(40) }
      location { Faker::Address.city }
      price { Faker::Commerce.price }
      capacity 50
      includes_food true
      includes_drink true
      starts_at DateTime.now+1
      end_at DateTime.now+2
      user { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
