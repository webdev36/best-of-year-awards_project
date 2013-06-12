# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project_spec do
    submission nil
    market_segments "MyString"
    completion_date "2013-06-12"
    lead_designer "MyString"
    architect "MyString"
    additional_designers "MyString"
    other_resources "MyString"
    othere_resources_title "MyString"
    square_footage "MyString"
  end
end
