class Student < ActiveRecord::Base

  belongs_to :drug
  belongs_to :race
  belongs_to :school
  belongs_to :risk_factor
  belongs_to :updated_school, :class_name => "School", :foreign_key => "school_id"
end
