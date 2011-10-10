class AddLatitudeAndLongitudeToCrimeTip < ActiveRecord::Migration
  def change
    add_column :crime_tips, :latitude, :float
    add_column :crime_tips, :longitude, :float
  end
end
