class CrimeTip < ActiveRecord::Base
  belongs_to :assign
  belongs_to :crime
  belongs_to :drug
  belongs_to :suspect_race, :class_name => "Race", :foreign_key => "suspect_race_id"
  belongs_to :suspect_school, :class_name => "School", :foreign_key => "suspect_school_id"

  has_many :tip_files

  accepts_nested_attributes_for :tip_files, :allow_destroy => true

  geocoded_by :location
  after_validation :geocode,:if => :street_number_changed? or :street_name_changed?


  def suspect_name
    suspect_name = self.suspect_first_name + ' ' + self.suspect_last_name
  end

  def location
    [street_number, street_name, city, ].compact.join(' ')
  end

end
