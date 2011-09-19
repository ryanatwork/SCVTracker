require 'spec_helper'

describe "students/new.html.haml" do
  before(:each) do
    assign(:student, stub_model(Student,
      :first_name => "MyString",
      :last_name => "MyString",
      :id_number => "MyString",
      :gender => "MyString",
      :race_id => 1,
      :street_number => "MyString",
      :street_name => "MyString",
      :address_2 => "MyString",
      :city => "MyString",
      :zip_code => "MyString",
      :phone => "MyString",
      :cell_phone => "MyString",
      :alt_name => "MyString",
      :school_id => 1,
      :updated_school_id => 1,
      :grade => "MyString",
      :vehicle => "MyString",
      :associates => "MyString",
      :crimes => "MyString",
      :urn => "MyString",
      :probation => false,
      :probation_status => "MyString",
      :gang => "MyString",
      :moniker => "MyString",
      :drug_id => 1,
      :programs => "MyText",
      :notes => "MyText",
      :risk_factor_id => 1,
      :school_deputy_id => 1
    ).as_new_record)
  end

  it "renders new student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => students_path, :method => "post" do
      assert_select "input#student_first_name", :name => "student[first_name]"
      assert_select "input#student_last_name", :name => "student[last_name]"
      assert_select "input#student_id_number", :name => "student[id_number]"
      assert_select "select#student_gender", :name => "student[gender]"
      assert_select "select#student_race_id", :name => "student[race_id]"
      assert_select "input#student_street_number", :name => "student[street_number]"
      assert_select "input#student_street_name", :name => "student[street_name]"
      assert_select "input#student_address_2", :name => "student[address_2]"
      assert_select "input#student_city", :name => "student[city]"
      assert_select "input#student_zip_code", :name => "student[zip_code]"
      assert_select "input#student_phone", :name => "student[phone]"
      assert_select "input#student_cell_phone", :name => "student[cell_phone]"
      assert_select "input#student_alt_name", :name => "student[alt_name]"
      assert_select "select#student_school_id", :name => "student[school_id]"
      assert_select "select#student_updated_school_id", :name => "student[updated_school_id]"
      assert_select "select#student_grade", :name => "student[grade]"
      assert_select "input#student_vehicle", :name => "student[vehicle]"
      assert_select "input#student_associates", :name => "student[associates]"
      assert_select "input#student_crimes", :name => "student[crimes]"
      assert_select "input#student_urn", :name => "student[urn]"
      assert_select "input#student_probation", :name => "student[probation]"
      assert_select "input#student_probation_status", :name => "student[probation_status]"
      assert_select "input#student_gang", :name => "student[gang]"
      assert_select "input#student_moniker", :name => "student[moniker]"
      assert_select "select#student_drug_id", :name => "student[drug_id]"
      assert_select "textarea#student_programs", :name => "student[programs]"
      assert_select "textarea#student_notes", :name => "student[notes]"
      assert_select "select#student_risk_factor_id", :name => "student[risk_factor_id]"
      assert_select "select#student_school_deputy_id", :name => "student[school_deputy_id]"
    end
  end
end
