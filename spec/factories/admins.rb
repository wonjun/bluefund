FactoryGirl.define do
  factory :admin do
    sequence(:email) { |n| "admin#{n}@admin.com" }
    password "password"
  end
end
