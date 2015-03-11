FactoryGirl.define do
  factory :creator do
    sequence(:email) { |n| "creator#{n}@creator.com" }
    password "password"
  end
end
