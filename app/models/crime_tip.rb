class CrimeTip < ActiveRecord::Base
  belongs_to :assign
  belongs_to :crime
  belongs_to :drug
  belongs_to :suspect_race, :class_name => "Race", :foreign_key => "suspect_race_id"
  belongs_to :suspect_school, :class_name => "School", :foreign_key => "suspect_school_id"

  def suspect_name
    suspect_name = self.suspect_first_name + ' ' + self.suspect_last_name
  end

end
