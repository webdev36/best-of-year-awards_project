# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :payment do
    user nil
    transaction_id "MyString"
    refund_id "MyString"
    price_subtotal "MyString"
    price_tax "MyString"
    price_refund "MyString"
    price_total "MyString"
    status "MyString"
    ccard_last4 "MyString"
    first_name "MyString"
    last_name "MyString"
    street_address "MyString"
    city "MyString"
    region "MyString"
    post_code "MyString"
    country "MyString"
  end
end
