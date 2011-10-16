class Zone < ActiveRecord::Base
  has_many :crime_tips
end
