class CrimeTip < ActiveRecord::Base
  belongs_to :crime
  belongs_to :drug
  belongs_to :race
  belongs_to :suspect_school, :class_name => "School", :foreign_key => "suspect_school_id"
end
