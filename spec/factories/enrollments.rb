# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :enrollment do
    user_id 1
    school_id 1
    enrolled_from "2012-11-26"
    enrolled_to "2012-11-26"
    major "MyString"
    course_of_study "MyString"
    credit_hours 1
  end
end
