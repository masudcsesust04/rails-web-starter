FactoryGirl.define do
  factory :user do
    email { 'admin@example.com' }
    password { '123123' }
  end
end
