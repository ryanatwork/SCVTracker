require 'spec_helper'

describe "Drugs" do
  describe "GET /drugs" do
    pending it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get drugs_path
      response.status.should be(200)
    end
  end
end
