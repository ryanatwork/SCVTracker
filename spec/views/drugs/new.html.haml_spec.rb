require 'spec_helper'

describe "drugs/new.html.haml" do
  before(:each) do
    assign(:drug, stub_model(Drug,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new drug form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => drugs_path, :method => "post" do
      assert_select "input#drug_name", :name => "drug[name]"
    end
  end
end
