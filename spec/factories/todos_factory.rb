FactoryGirl.define do
  factory :todo do
    title "MyString"
    description "MyText"
    published false
    creator_id 1
    assigned_to 1
  end
end
