# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Drug information added"
[
  {:name => "ALCOHOL"},
  {:name => "COCAINE"},
  {:name => "CODEINE"},
  {:name => "ALPRAZOLAM (XANAX)"},
  {:name => "CONCENTRATED CANNABIS"},
  {:name => "DEXTROAMPHETAMINE (DEXEDRINE)"},
  {:name => "DIAZEPAM (VALIUM)"},
  {:name => "ECSTASY (MDMA)"},
  {:name => "HEROIN"},
  {:name => "HYDROCODONE (LORCET, LORITAB, NORCO, VICODIN)"},
  {:name => "LSD"},
  {:name => "MARIJUANA"},
  {:name => "MEPERIDINE (DEMEROL)"},
  {:name => "METHADONE"},
  {:name => "METHAMPHETAMINE"},
  {:name => "MORPHINE"},
  {:name => "OXYCODONE (OXYCONTIN, ROXICODONE, PERCOCET, PERCODAN)"},
  {:name => "PARAPHERNALIA"},
  {:name => "PROPOXPHENE (DARVOCET)"},
  {:name => "TOBACCO"},
  {:name => "UNKNOWN"},
].each do |attributes|
  Drug.find_or_create_by_name(attributes)
end

puts "Ethnicity information"
[
  {:name => "Unknown"},
  {:name => "White"},
  {:name => "Asian"},
  {:name => "Hispaic"},
  {:name => "Black"},
  {:name => "Other"},
].each do |attributes|
  Race.find_or_create_by_name(attributes)
end

puts "School Information"
[
  {:name => "Academy of the Canyons"},
  {:name => "Arroyo Seco Junior High"},
  {:name => "Canyon High School"},
  {:name => "Bowman High School"},
  {:name => "Drop Out"},
  {:name => "Golden Oak Adult School"},
  {:name => "Golden Valley High School"},
  {:name => "Hart High School"},
  {:name => "Home School"},
  {:name => "La Mesa Junior High"},
  {:name => "Learning Post"},
  {:name => "Mission View"},
  {:name => "OFL: Canyon Country"},
  {:name => "OFL: Castaic"},
  {:name => "OFL: Valencia"},
  {:name => "Placerita Junior High"},
  {:name => "Ranco Pico Junior High"},
  {:name => "Rio Norte Junior High"},
  {:name => "Saugus High School"},
  {:name => "SCV Academy"},
  {:name => "SCV International"},
  {:name => "Sequoia Charter"},
  {:name => "Sierra Vista Junior High"},
  {:name => "TLC - Transitional Learning Center"},
  {:name => "Valencia High School"},
  {:name => "West Ranch High School"},
].each do |attributes|
  School.find_or_create_by_name(attributes)
end

puts "Risk Status"
[
  {:status => "High"},
  {:status => "Medium"},
  {:status => "Low"},
].each do |attributes|
  RiskFactor.find_or_create_by_status(attributes)
end

#Load Development Seed data
if Rails.env != 'production'
require 'faker'
require 'factory_girl_rails'

puts "adding 10 users"
  10.times {
    user = Factory(:user, :first_name => Faker::Name.first_name,:last_name => Faker::Name.last_name,
                   :school_deputy => Random.rand(2), :tip_deputy => Random.rand(2))
    puts "Added #{user.email}"
    }

puts "adding 100 students"
  100.times {
    Student.create(:first_name => Faker::Name.first_name,
      :last_name => Faker::Name.last_name,
      :id_number => Faker::Address.zip_code,
      :gender => ['M','F'].shuffle[0],
      :dob => Time.at(Time.local(1997,1,1) + rand * (Time.now - Time.local(2011,12,31))),
      :race_id => Random.rand(5),
      :street_number => Faker::Address.street_address,
      :street_name => Faker::Address.street_name,
      :address_2 => [Faker::Address.secondary_address, ''].shuffle[0],
      :city => Faker::Address.city,
      :zip_code => Faker::Address.zip_code,
      :phone => Faker::PhoneNumber.phone_number,
      :cell_phone => Faker::PhoneNumber.phone_number,
      :alt_name => Faker::Name.first_name,
      :school_id => Random.rand(10),
      :updated_school_id => Random.rand(5),
      :grade => Random.rand(12),
      :vehicle => Faker::Company.bs,
      :associates => [Faker::Name.first_name,''].shuffle[0],
      :crimes => Faker::Company.catch_phrase,
      :urn => Faker::Company.catch_phrase,
      :probation => [0,1].shuffle,
      :probation_status => Faker::Company.catch_phrase,
      :gang => Faker::Company.bs,
      :moniker => Faker::Company.bs,
      :drug_id => Random.rand(10),
      :programs => Faker::Lorem.paragraph,
      :notes => Faker::Lorem.paragraph,
      :risk_factor_id => Random.rand(3),
      :school_deputy_id => User.where(:school_deputy => true).map(&:id).shuffle[0]
    )
  }
puts User.where(:school_deputy => true).map(&:id)

puts "adding 100 crime tips"
  100.times {
    CrimeTip.create(
      :tip_number => Faker::Address.zip_code,
      :date_rec => Time.at(Time.local(2011,1,1) + rand * (Time.now - Time.local(2011,12,31))),
      :date_due => Time.at(Time.local(2011,1,1) + rand * (Time.now - Time.local(2011,12,31))),
      :crime_id => Random.rand(5),
      :street_number => Faker::Address.zip_code,
      :street_name => Faker::Address.street_name,
      :cross_street => Faker::Address.street_name,
      :informant_name => Faker::Name.first_name + ' ' + Faker::Name.last_name,
      :informant_phone => Faker::PhoneNumber.phone_number,
      :informant_email => Faker::Internet.email,
      :suspect_first_name => Faker::Name.first_name,
      :suspect_last_name => Faker::Name.last_name,
      :suspect_dob => Time.at(Time.local(1950,1,1) + rand * (Time.now - Time.local(2011,12,31))),
      :suspect_age => Random.rand(100),
      :suspect_race_id => Random.rand(5),
      :suspect_gender => ['M','F'].shuffle[0],
      :suspect_street_number => Faker::Address.zip_code,
      :suspect_street_name => Faker::Address.street_name,
      :suspect_city => Faker::Address.city,
      :suspect_school_id => Random.rand(10),
      :suspect_phone => Faker::PhoneNumber.phone_number,
      :suspect_cell => Faker::PhoneNumber.phone_number,
      :gang => Faker::Name.last_name,
      :vehicle => Faker::Name.last_name,
      :license_plate => Faker::Name.first_name,
      :drug_id => Random.rand(10),
      :team_id => Random.rand(10),
      :date_assigned => Time.at(Time.local(1950,1,1) + rand * (Time.now - Time.local(2011,12,31))),
      :date_completed => Time.at(Time.local(1950,1,1) + rand * (Time.now - Time.local(2011,12,31))),
      :charges => Faker::Company.bs,
      :urn => Faker::Company.bs,
      :clearance => Faker::Lorem.paragraph,
      :side_notes => Faker::Lorem.paragraph,
      :search_warrant => [0,1].shuffle,
      :probation_search => [0,1].shuffle,
      :parole_search => [0,1].shuffle,
      :arrested => [0,1].shuffle,
      :status_id => Random.rand(3),
      :suspect_2 => Faker::Name.first_name,
      :suspect_3 => Faker::Name.last_name
  )
  }



end
