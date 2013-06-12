# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_session do
    session_id "MyString"
    data "MyText"
  end
end
