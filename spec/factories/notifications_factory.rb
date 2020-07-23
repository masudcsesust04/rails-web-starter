FactoryGirl.define do
  factory :notification do
    recipient_id 1
    actor_id 1
    read_at "2020-07-21 20:35:20"
    action "MyString"
    notifiable_id 1
    notifiable_type "MyString"
  end
end
