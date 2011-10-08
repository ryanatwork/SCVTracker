class Race < ActiveRecord::Base

  has_many :crime_tips
  has_many :students

end
