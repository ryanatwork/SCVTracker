require 'spec_helper'

describe "crime_tips/edit.html.haml" do
  before(:each) do
    @crime_tip = assign(:crime_tip, stub_model(CrimeTip,
      :crime_id => 1,
      :street_number => "MyString",
      :street_name => "MyString",
      :cross_street => "MyString",
      :informant_name => "MyString",
      :informant_phone => "MyString",
      :informant_email => "MyString",
      :suspect_first_name => "MyString",
      :suspect_last_name => "MyString",
      :suspect_age => "MyString",
      :suspect_race_id => 1,
      :suspect_gender => "MyString",
      :suspect_street_number => "MyString",
      :suspect_street_name => "MyString",
      :suspect_city => "MyString",
      :suspect_school_id => 1,
      :suspect_phone => "MyString",
      :suspect_cell => "MyString",
      :gang => "MyString",
      :vehicle => "MyString",
      :license_plate => "MyString",
      :drug_id => 1,
      :team_id => 1,
      :charge_list => "MyString",
      :urn => "MyString",
      :clearance => "MyText",
      :side_notes => "MyText",
      :search_warrant => false,
      :probation_search => false,
      :parole_search => false,
      :arrested => false,
      :status_id => 1,
      :suspect_2 => "MyString",
      :suspect_3 => "MyString"
    ))
  end

  it "renders the edit crime_tip form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => crime_tips_path(@crime_tip), :method => "post" do
      assert_select "input#crime_tip_street_number", :name => "crime_tip[street_number]"
      assert_select "input#crime_tip_street_name", :name => "crime_tip[street_name]"
      assert_select "input#crime_tip_cross_street", :name => "crime_tip[cross_street]"
      assert_select "input#crime_tip_informant_name", :name => "crime_tip[informant_name]"
      assert_select "input#crime_tip_informant_phone", :name => "crime_tip[informant_phone]"
      assert_select "input#crime_tip_informant_email", :name => "crime_tip[informant_email]"
      assert_select "input#crime_tip_suspect_first_name", :name => "crime_tip[suspect_first_name]"
      assert_select "input#crime_tip_suspect_last_name", :name => "crime_tip[suspect_last_name]"
      assert_select "input#crime_tip_suspect_age", :name => "crime_tip[suspect_age]"
      assert_select "select#crime_tip_suspect_race_id", :name => "crime_tip[suspect_race_id]"
      assert_select "select#crime_tip_suspect_gender", :name => "crime_tip[suspect_gender]"
      assert_select "input#crime_tip_suspect_street_number", :name => "crime_tip[suspect_street_number]"
      assert_select "input#crime_tip_suspect_street_name", :name => "crime_tip[suspect_street_name]"
      assert_select "input#crime_tip_suspect_city", :name => "crime_tip[suspect_city]"
      assert_select "select#crime_tip_suspect_school_id", :name => "crime_tip[suspect_school_id]"
      assert_select "input#crime_tip_suspect_phone", :name => "crime_tip[suspect_phone]"
      assert_select "input#crime_tip_suspect_cell", :name => "crime_tip[suspect_cell]"
      assert_select "input#crime_tip_gang", :name => "crime_tip[gang]"
      assert_select "input#crime_tip_vehicle", :name => "crime_tip[vehicle]"
      assert_select "input#crime_tip_license_plate", :name => "crime_tip[license_plate]"
      assert_select "select#crime_tip_drug_id", :name => "crime_tip[drug_id]"
      assert_select "input#crime_tip_charge_list", :name => "crime_tip[charge_list]"
      assert_select "input#crime_tip_urn", :name => "crime_tip[urn]"
      assert_select "textarea#crime_tip_clearance", :name => "crime_tip[clearance]"
      assert_select "textarea#crime_tip_side_notes", :name => "crime_tip[side_notes]"
      assert_select "input#crime_tip_search_warrant", :name => "crime_tip[search_warrant]"
      assert_select "input#crime_tip_probation_search", :name => "crime_tip[probation_search]"
      assert_select "input#crime_tip_parole_search", :name => "crime_tip[parole_search]"
      assert_select "input#crime_tip_arrested", :name => "crime_tip[arrested]"
      assert_select "select#crime_tip_status", :name => "crime_tip[status]"
      assert_select "input#crime_tip_suspect_2", :name => "crime_tip[suspect_2]"
      assert_select "input#crime_tip_suspect_3", :name => "crime_tip[suspect_3]"
    end
  end
end
