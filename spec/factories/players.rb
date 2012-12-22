# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :player do
    given_name "MyString"
    surname "MyString"
    home_club "MyString"
    city "MyString"
    state "MyString"
    country "MyString"
    delivering_hand "MyString"
    year_started_curling 1
    notes "MyText"
    throwing_order 1
    skip false
    vice false
  end
end
