require 'spec_helper'

describe "crimes/new.html.haml" do
  before(:each) do
    assign(:crime, stub_model(Crime,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new crime form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => crimes_path, :method => "post" do
      assert_select "input#crime_name", :name => "crime[name]"
    end
  end
end
