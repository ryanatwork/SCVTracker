require 'spec_helper'

describe "crimes/edit.html.haml" do
  before(:each) do
    @crime = assign(:crime, stub_model(Crime,
      :name => "MyString"
    ))
  end

  it "renders the edit crime form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => crimes_path(@crime), :method => "post" do
      assert_select "input#crime_name", :name => "crime[name]"
    end
  end
end
