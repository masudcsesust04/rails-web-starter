FactoryGirl.define do
  factory :todo do
    summary "MyString"
    description "MyText"
    published false
    creator_id 1
  end
end
