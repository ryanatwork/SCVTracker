require 'spec_helper'

describe CrimeTip do

  describe "#suspect_name" do
    before do
      stub_request(:get, "http://maps.googleapis.com/maps/api/geocode/json?address=23920%20Valencia%20blvd%20Santa%20Clarita&language=en&sensor=false").
         with(:headers => {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
         to_return(:status => 200, :body => fixture("city_hall.json"), :headers => {})
      @crime_tip = Factory(:crime_tip)
    end

    it "should return the full name of the suspect" do
      @crime_tip.suspect_name.should == "Alex Smith"
    end

    it "should return the combined street address" do
      @crime_tip.location.should == "23920 Valencia blvd Santa Clarita"
    end

  end

end
