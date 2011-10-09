class AddCityToCrimeTip < ActiveRecord::Migration
  def change
    add_column :crime_tips, :city, :string
  end
end
