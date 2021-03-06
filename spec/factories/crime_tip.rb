FactoryGirl.define do
  factory :crime_tip do
      tip_number  Faker::Address.zip_code
      date_rec Date.new(2011,1,2)
      date_due  Date.new(2011,1,10)
      crime_id  Random.rand(5)
      street_number  "23920"
      street_name  "Valencia blvd"
      cross_street Faker::Address.street_name
      informant_name  Faker::Name.first_name + ' ' + Faker::Name.last_name
      informant_phone  Faker::PhoneNumber.phone_number
      informant_email  Faker::Internet.email
      suspect_first_name  "Alex"
      suspect_last_name  "Smith"
      suspect_dob  Date.new(1950,1,1)
      suspect_age  20
      suspect_race_id  4
      suspect_gender 'M'
      suspect_street_number  Faker::Address.zip_code
      suspect_street_name  Faker::Address.street_name
      suspect_city  Faker::Address.city
      suspect_school_id  4
      suspect_phone  Faker::PhoneNumber.phone_number
      suspect_cell Faker::PhoneNumber.phone_number
      gang  Faker::Name.last_name
      vehicle  Faker::Name.last_name
      license_plate  Faker::Name.first_name
      drug_id  3
      assign_id  2
      date_assigned  Date.new(2011,1,10)
      date_completed  Date.new(2011,12,10)
      charge_list  Faker::Company.bs
      urn  Faker::Company.bs
      clearance  Faker::Lorem.paragraph
      side_notes  Faker::Lorem.paragraph
      search_warrant  true
      probation_search true
      parole_search  true
      arrested  true
      status  "Open"
      suspect_2  Faker::Name.first_name
      suspect_3  Faker::Name.last_name
      city "Santa Clarita"
  end
end
