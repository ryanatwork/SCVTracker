class AddTipNumberToCrimeTips < ActiveRecord::Migration
  def change
    add_column :crime_tips, :tip_number, :string
  end
end
