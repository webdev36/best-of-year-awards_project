# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "test@email.com"
    first_name "Jhone"
    last_name "Smith"
    password "123456789"
    password_confirmation "123456789"
    company_name "Test company"
    occupation "0"
  end
end
