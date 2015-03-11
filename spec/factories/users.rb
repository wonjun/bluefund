FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@user.com" }
    password "password"
  end
end
