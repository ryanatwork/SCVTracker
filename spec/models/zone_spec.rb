require 'spec_helper'

describe Zone do

  before do
    @zone = Factory(:zone)
  end
  context "relationships" do
    it 'belongs' do
      @zone.respond_to?(:crime_tips).should be_true
    end
  end

end
