require 'spec_helper'

describe "schools/new.html.haml" do
  before(:each) do
    assign(:school, stub_model(School,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new school form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schools_path, :method => "post" do
      assert_select "input#school_name", :name => "school[name]"
    end
  end
end
