require 'spec_helper'

describe "schools/edit.html.haml" do
  before(:each) do
    @school = assign(:school, stub_model(School,
      :name => "MyString"
    ))
  end

  it "renders the edit school form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schools_path(@school), :method => "post" do
      assert_select "input#school_name", :name => "school[name]"
    end
  end
end
