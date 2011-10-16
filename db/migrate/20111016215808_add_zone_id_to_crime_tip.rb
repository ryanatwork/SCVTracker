class AddZoneIdToCrimeTip < ActiveRecord::Migration
  def change
    add_column :crime_tips, :zone_id, :integer
  end
end
