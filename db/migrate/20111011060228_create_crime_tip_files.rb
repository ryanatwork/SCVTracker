class CreateCrimeTipFiles < ActiveRecord::Migration
  def change
    create_table :crime_tip_files do |t|
      t.string :crime_tip_file_name
      t.string :crime_tip_content_type
      t.integer :crime_tip_file_size
      t.date :crime_tip_updated_at
      t.integer :crime_tip_id

      t.timestamps
    end
  end
end
