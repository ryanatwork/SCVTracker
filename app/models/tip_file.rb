class TipFile < ActiveRecord::Base
  belongs_to :crime_tip
  has_attached_file :tip
end
