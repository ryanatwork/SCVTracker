require 'spec_helper'

describe CrimeTip do

  describe "#suspect_name" do
    before do
      @crime_tip = Factory(:crime_tip)
    end

    it "should return the full name of the suspect" do
      @crime_tip.suspect_name.should == "Alex Smith"
    end

  end

end
