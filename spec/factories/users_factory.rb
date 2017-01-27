FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "admin#{n}@example.com"}
    password '11111111'
    password_confirmation '11111111'
  end
end
