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
