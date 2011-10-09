class AddAssignedToCrimeTip < ActiveRecord::Migration
  def change
    add_column :crime_tips, :assign_id, :integer
    remove_column :crime_tips, :team_id
  end
end
