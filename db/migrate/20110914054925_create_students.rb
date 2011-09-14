class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :id_number
      t.string :gender
      t.date :dob
      t.integer :race_id
      t.string :street_number
      t.string :street_name
      t.string :address_2
      t.string :city
      t.string :zip_code
      t.string :phone
      t.string :cell_phone
      t.string :alt_name
      t.integer :school_id
      t.integer :updated_school_id
      t.string :grade
      t.string :vehicle
      t.string :associates
      t.string :crimes
      t.string :urn
      t.boolean :probation
      t.string :probation_status
      t.string :gang
      t.string :moniker
      t.integer :drug_id
      t.text :programs
      t.text :notes
      t.integer :risk_factor_id
      t.integer :school_deputy_id

      t.timestamps
    end
  end
end
