require 'spec_helper'

describe "crimes/index.html.haml" do
  before(:each) do
    assign(:crimes, [
      stub_model(Crime,
        :name => "Name"
      ),
      stub_model(Crime,
        :name => "Name"
      )
    ])
  end

  it "renders a list of crimes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
