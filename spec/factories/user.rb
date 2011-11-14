FactoryGirl.define do
  factory :user do
    sequence(:email){|n| "email#{n}@test.com" }
    password "123456"
    password_confirmation "123456"
    approved true
  end
end
