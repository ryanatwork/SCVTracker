class CreateCrimeTips < ActiveRecord::Migration
  def change
    create_table :crime_tips do |t|
      t.date :date_rec
      t.date :date_due
      t.integer :crime_id
      t.string :street_number
      t.string :street_name
      t.string :cross_street
      t.string :informant_name
      t.string :informant_phone
      t.string :informant_email
      t.string :suspect_first_name
      t.string :suspect_last_name
      t.date :suspect_dob
      t.string :suspect_age
      t.integer :suspect_race_id
      t.string :suspect_gender
      t.string :suspect_street_number
      t.string :suspect_street_name
      t.string :suspect_city
      t.integer :suspect_school_id
      t.string :suspect_phone
      t.string :suspect_cell
      t.string :gang
      t.string :vehicle
      t.string :license_plate
      t.integer :drug_id
      t.integer :team_id
      t.date :date_assigned
      t.date :date_completed
      t.string :charges
      t.string :urn
      t.text :clearance
      t.text :side_notes
      t.boolean :search_warrant
      t.boolean :probation_search
      t.boolean :parole_search
      t.boolean :arrested
      t.integer :status_id
      t.string :suspect_2
      t.string :suspect_3

      t.timestamps
    end
  end
end
