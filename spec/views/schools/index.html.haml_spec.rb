require 'spec_helper'

describe "schools/index.html.haml" do
  before(:each) do
    assign(:schools, [
      stub_model(School,
        :name => "Name"
      ),
      stub_model(School,
        :name => "Name"
      )
    ])
  end

  it "renders a list of schools" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
