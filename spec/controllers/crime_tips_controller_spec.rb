require 'spec_helper'

describe CrimeTipsController do

 login_user

 before(:each) do
   stub_request(:get, "http://maps.googleapis.com/maps/api/geocode/json?address=23920%20Valencia%20blvd%20Santa%20Clarita&language=en&sensor=false").
         with(:headers => {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
         to_return(:status => 200, :body => fixture("city_hall.json"), :headers => {})
 end


  it "should have a current_user" do
    subject.current_user.should_not be_nil
  end

  describe "#index" do
    it "should render the index template" do
      get :index
      response.should render_template("crime_tips/index")
    end
  end

  describe "#show and #edit" do
    before do
      Factory(:crime_tip)
      @crime_tips = CrimeTip.find(:first)
    end

    it "should render the show template" do
      get :show, :id => @crime_tips
        response.should render_template("crime_tips/show")
      end

    describe "edit action should render edit template" do
      it "should be successful" do
        get :edit, :id => @crime_tips
        response.should render_template("crime_tips/edit")
      end
    end
  end

  describe '#create' do
    before do
      post :create, :crime_tips => FactoryGirl.attributes_for(:crime_tip)
      @crime_tips = CrimeTip.find(:first)
      @response = response
    end

    it "should create a crime tip" do
      CrimeTip.all.size.should == 1
    end

    it "should redirect to that crime tip" do
      @response.should redirect_to(@crime_tips)
    end
  end

  describe '#update' do
    before do
      @crime_tips = Factory(:crime_tip)
      put :update, :id => @crime_tips.id, :crime_tip => { :suspect_first_name => "Bob" }
    end

    it "should update the crime tip suspect first name" do
      @crime_tips.reload.suspect_first_name.should == "Bob"
    end
  end

  describe '#destroy' do
    before do
      @crime_tips = Factory(:crime_tip)
      @crime_tips_count = CrimeTip.all.size
      delete :destroy, :id => @crime_tips.id
    end

    it "should destroy a student" do
      CrimeTip.all.size.should == @crime_tips_count - 1
      expect{@crime_tips.reload}.to raise_error ActiveRecord::RecordNotFound
    end

    it "should redirect to that crime_tips_url" do
      @response.should redirect_to(crime_tips_url)
    end
  end

end
