require 'spec_helper'

describe "drugs/index.html.haml" do
  before(:each) do
    assign(:drugs, [
      stub_model(Drug,
        :name => "Name"
      ),
      stub_model(Drug,
        :name => "Name"
      )
    ])
  end

  it "renders a list of drugs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
