class CreateTipFiles < ActiveRecord::Migration
  def change
    create_table :tip_files do |t|
      t.string :tip_file_name
      t.string :tip_content_type
      t.integer :tip_file_size
      t.datetime :tip_updated_at
      t.integer :crime_tip_id

      t.timestamps
    end
  end
end
