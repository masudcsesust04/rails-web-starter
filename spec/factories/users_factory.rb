FactoryGirl.define do
  factory :user do
    email { 'admin@example.com' }
    password { 'Admin@321' }
  end
end
