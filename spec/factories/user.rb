FactoryGirl.define do
  factory :user do
    sequence(:email){|n| "email#{n}@test.com" }
    password "123456"
    password_confirmation "123456"
    confirmed_at Date.new(2011,1,1)
  end
end
