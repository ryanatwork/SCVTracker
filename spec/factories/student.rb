FactoryGirl.define do
  factory :student do
    first_name "Joey"
    last_name "Student"
    id_number "123456"
    gender "M"
    race_id 1
    dob Date.new(1997,12,1)
    street_number "23920"
    street_name "Newhall Ave"
    address_2 "Apt 290"
    city "Newhall"
    zip_code "91321"
    phone "661-555-1212"
  end
end
