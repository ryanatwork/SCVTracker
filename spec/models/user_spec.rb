require 'spec_helper'

describe User do
  describe "#name" do
    it "should concat the first and last name" do
      user = Factory(:user, :first_name => 'Bob', :last_name => 'Smith')
      test = user.name
      test.should == "Bob Smith"
    end

    it "should concat a name when it's nil" do
      user = Factory(:user)
      test = user.name
      test.should == ""
    end
  end
end
