# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    submission nil
    first_name "MyString"
    last_name "MyString"
    phone "MyString"
    email "MyString"
    job_title "MyString"
    company "MyString"
    street_address1 "MyString"
    street_address2 "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    country "MyString"
    fax "MyString"
  end
end
