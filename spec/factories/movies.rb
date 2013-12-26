# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :movie do
    title "MyString"
    year 1
    box 1
    format "MyString"
    position 1
  end
end
