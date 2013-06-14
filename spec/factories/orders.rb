# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    user nil
    balance_amout "MyString"
    payment_option "MyString"
    shipping_first_name "MyString"
    shipping_last_name "MyString"
    shipping_address "MyString"
    shipping_optional_address "MyString"
    shipping_city "MyString"
    shipping_state "MyString"
    shipping_zip_code "MyString"
    shipping_country "MyString"
    shipping_method "MyString"
    email "MyString"
  end
end
