require 'spec_helper'

describe "students/index.html.haml" do
  before(:each) do
    assign(:students, [
      stub_model(Student,
        :first_name => "First Name",
        :last_name => "Last Name",
        :id_number => "Id Number",
        :gender => "Gender",
        :race_id => 1,
        :street_number => "Street Number",
        :street_name => "Street Name",
        :address_2 => "Address 2",
        :city => "City",
        :zip_code => "Zip Code",
        :phone => "Phone",
        :cell_phone => "Cell Phone",
        :alt_name => "Alt Name",
        :school_id => 1,
        :updated_school_id => 1,
        :grade => "Grade",
        :vehicle => "Vehicle",
        :associates => "Associates",
        :crimes => "Crimes",
        :urn => "Urn",
        :probation => false,
        :probation_status => "Probation Status",
        :gang => "Gang",
        :moniker => "Moniker",
        :drug_id => 1,
        :programs => "MyText",
        :notes => "MyText",
        :risk_factor_id => 1,
        :school_deputy_id => 1
      ),
      stub_model(Student,
        :first_name => "First Name",
        :last_name => "Last Name",
        :id_number => "Id Number",
        :gender => "Gender",
        :race_id => 1,
        :street_number => "Street Number",
        :street_name => "Street Name",
        :address_2 => "Address 2",
        :city => "City",
        :zip_code => "Zip Code",
        :phone => "Phone",
        :cell_phone => "Cell Phone",
        :alt_name => "Alt Name",
        :school_id => 1,
        :updated_school_id => 1,
        :grade => "Grade",
        :vehicle => "Vehicle",
        :associates => "Associates",
        :crimes => "Crimes",
        :urn => "Urn",
        :probation => false,
        :probation_status => "Probation Status",
        :gang => "Gang",
        :moniker => "Moniker",
        :drug_id => 1,
        :programs => "MyText",
        :notes => "MyText",
        :risk_factor_id => 1,
        :school_deputy_id => 1
      )
    ])
  end

  pending it "renders a list of students" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "School".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Updated School".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
  end
end
