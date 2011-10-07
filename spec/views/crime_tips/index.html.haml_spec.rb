require 'spec_helper'

describe "crime_tips/index.html.haml" do
  before(:each) do
    assign(:crime_tips, [
      stub_model(CrimeTip,
        :crime_id => 1,
        :street_number => "Street Number",
        :street_name => "Street Name",
        :cross_street => "Cross Street",
        :informant_name => "Informant Name",
        :informant_phone => "Informant Phone",
        :informant_email => "Informant Email",
        :suspect_first_name => "Suspect First Name",
        :suspect_last_name => "Suspect Last Name",
        :suspect_age => "Suspect Age",
        :suspect_race_id => 1,
        :suspect_gender => "Suspect Gender",
        :suspect_street_number => "Suspect Street Number",
        :suspect_street_name => "Suspect Street Name",
        :suspect_city => "Suspect City",
        :suspect_school_id => 1,
        :suspect_phone => "Suspect Phone",
        :suspect_cell => "Suspect Cell",
        :gang => "Gang",
        :vehicle => "Vehicle",
        :license_plate => "License Plate",
        :drug_id => 1,
        :team_id => 1,
        :charges => "Charges",
        :urn => "Urn",
        :clearance => "MyText",
        :side_notes => "MyText",
        :search_warrant => false,
        :probation_search => false,
        :parole_search => false,
        :arrested => false,
        :status_id => 1,
        :suspect_2 => "Suspect 2",
        :suspect_3 => "Suspect 3"
      ),
      stub_model(CrimeTip,
        :crime_id => 1,
        :street_number => "Street Number",
        :street_name => "Street Name",
        :cross_street => "Cross Street",
        :informant_name => "Informant Name",
        :informant_phone => "Informant Phone",
        :informant_email => "Informant Email",
        :suspect_first_name => "Suspect First Name",
        :suspect_last_name => "Suspect Last Name",
        :suspect_age => "Suspect Age",
        :suspect_race_id => 1,
        :suspect_gender => "Suspect Gender",
        :suspect_street_number => "Suspect Street Number",
        :suspect_street_name => "Suspect Street Name",
        :suspect_city => "Suspect City",
        :suspect_school_id => 1,
        :suspect_phone => "Suspect Phone",
        :suspect_cell => "Suspect Cell",
        :gang => "Gang",
        :vehicle => "Vehicle",
        :license_plate => "License Plate",
        :drug_id => 1,
        :team_id => 1,
        :charges => "Charges",
        :urn => "Urn",
        :clearance => "MyText",
        :side_notes => "MyText",
        :search_warrant => false,
        :probation_search => false,
        :parole_search => false,
        :arrested => false,
        :status_id => 1,
        :suspect_2 => "Suspect 2",
        :suspect_3 => "Suspect 3"
      )
    ])
  end

  it "renders a list of crime_tips" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Street Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Street Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cross Street".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Informant Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Informant Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Informant Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Suspect First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Suspect Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Suspect Age".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Suspect Gender".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Suspect Street Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Suspect Street Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Suspect City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Suspect Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Suspect Cell".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Gang".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Vehicle".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "License Plate".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Charges".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Urn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Suspect 2".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Suspect 3".to_s, :count => 2
  end
end
