require 'spec_helper'

describe "students/show.html.haml" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
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
    ))
  end

  pending it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Last Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Id Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gender/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Street Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Street Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address 2/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Zip Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cell Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Alt Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Grade/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Vehicle/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Associates/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Crimes/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Urn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Probation Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gang/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Moniker/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
