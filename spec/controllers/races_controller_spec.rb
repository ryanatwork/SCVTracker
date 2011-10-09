require 'spec_helper'

describe RacesController do

  login_user

  it "should have a current_user" do
    subject.current_user.should_not be_nil
  end


  describe "#index" do
    it "should render the index template" do
      get :index
      response.should render_template("races/index")
    end
  end

  describe "#show and #edit" do
    before do
      Factory(:race)
      @races = Race.find(:first)
    end

    it "should render the show template" do
      get :show, :id => @races
      response.should render_template("races/show")
    end

    describe "edit action should render edit template" do
      it "should be successful" do
        get :edit, :id => @races
        response.should render_template("races/edit")
      end
    end
  end

  describe '#create' do
    before do
      post :create, :race => FactoryGirl.attributes_for(:race)
      @races = Race.find(:first)
      @response = response
    end

    it "should create a race" do
      Race.all.size.should == 1
    end

    it "should redirect to that race" do
      @response.should redirect_to(@races)
    end
  end

  describe '#update' do
    before do
      @races = Factory(:race)
      put :update, :id => @races.id, :race => { :name => "Orange" }
    end

    it "should update the award name" do
      @races.reload.name.should == "Orange"
    end
  end

  describe '#destroy' do
    before do
      @races = Factory(:race)
      @races_count = Race.all.size
      delete :destroy, :id => @races.id
    end

    it "should destroy a race" do
      Race.all.size.should == @races_count - 1
      expect{@races.reload}.to raise_error ActiveRecord::RecordNotFound
    end

    it "should redirect to that races_url" do
      @response.should redirect_to(races_url)
    end
  end
end
