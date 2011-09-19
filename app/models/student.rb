class Student < ActiveRecord::Base

  belongs_to :drug
  belongs_to :race
  belongs_to :school
  belongs_to :risk_factor
  belongs_to :updated_school, :class_name => "School", :foreign_key => "updated_school_id"
  belongs_to :deputy, :class_name => "User", :foreign_key => "school_deputy_id"
end
