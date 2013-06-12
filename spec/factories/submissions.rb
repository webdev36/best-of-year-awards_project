# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :submission do
    title "MyString"
    description "MyText"
    status "MyString"
    active false
  end
end
