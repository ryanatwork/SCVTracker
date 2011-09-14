require 'spec_helper'

describe "drugs/edit.html.haml" do
  before(:each) do
    @drug = assign(:drug, stub_model(Drug,
      :name => "MyString"
    ))
  end

  it "renders the edit drug form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => drugs_path(@drug), :method => "post" do
      assert_select "input#drug_name", :name => "drug[name]"
    end
  end
end
