class Student < ActiveRecord::Base

  belongs_to :drug
  belongs_to :race
  belongs_to :school

end