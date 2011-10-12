class CrimeTipFile < ActiveRecord::Base
  belongs_to :crime_tip
  has_attached_file :crime_tip

end
