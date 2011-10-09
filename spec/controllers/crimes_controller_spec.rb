require 'spec_helper'

describe CrimesController do

  login_user

  it "should have a current_user" do
    subject.current_user.should_not be_nil
  end

  describe "#index" do
    it "should render the index template" do
      get :index
      response.should render_template("crimes/index")
    end
  end

  describe "#show and #edit" do
    before do
      Factory(:crime)
      @crimes = Crime.find(:first)
    end

    it "should render the show template" do
      get :show, :id => @crimes
        response.should render_template("crimes/show")
      end

    describe "edit action should render edit template" do
      it "should be successful" do
        get :edit, :id => @crimes
        response.should render_template("crimes/edit")
      end
    end
  end

  describe '#create' do
    before do
      post :create, :student => FactoryGirl.attributes_for(:crime)
      @crimes = Crime.find(:first)
      @response = response
    end

    it "should create a crime" do
      Crime.all.size.should == 1
    end

    it "should redirect to that crime" do
      @response.should redirect_to(@crimes)
    end
  end

  describe '#update' do
    before do
      @crimes = Factory(:crime)
      put :update, :id => @crimes.id, :crime => { :name => "Brogramming" }
    end

    it "should update the crime name" do
      @crimes.reload.name.should == "Brogramming"
    end
  end

  describe '#destroy' do
    before do
      @crimes = Factory(:crime)
      @crimes_count = Crime.all.size
      delete :destroy, :id => @crimes.id
    end

    it "should destroy a crime" do
      Crime.all.size.should == @crimes_count - 1
      expect{@crimes.reload}.to raise_error ActiveRecord::RecordNotFound
    end

    it "should redirect to that crimes_url" do
      @response.should redirect_to(crimes_url)
    end
  end


end
