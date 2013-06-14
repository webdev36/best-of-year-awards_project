# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order_submission do
    payment nil
    submission nil
  end
end
