require 'spec_helper'

describe "crime_tips/show.html.haml" do
  before(:each) do
    @crime_tip = assign(:crime_tip, stub_model(CrimeTip,
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
    ))
  end

  pending it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Street Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Street Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cross Street/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Informant Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Informant Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Informant Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Suspect First Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Suspect Last Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Suspect Age/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Suspect Gender/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Suspect Street Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Suspect Street Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Suspect City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Suspect Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Suspect Cell/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gang/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Vehicle/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/License Plate/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Charges/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Urn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Suspect 2/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Suspect 3/)
  end
end
