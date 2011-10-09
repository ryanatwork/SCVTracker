class ChangeStatusIdtoStatusOnCrimeTips < ActiveRecord::Migration
  def up
    add_column :crime_tips, :status, :string
    remove_column :crime_tips, :status_id
  end

  def down
    add_column  :crime_tips, :status_id, :integer
    remove_column :crime_tips, :status
  end
end
