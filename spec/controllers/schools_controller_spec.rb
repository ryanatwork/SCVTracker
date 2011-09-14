require 'spec_helper'

describe SchoolsController do

  describe "#index" do
    it "should render the index template" do
      get :index
      response.should render_template("schools/index")
    end
  end

  describe "#show and #edit" do
    before do
      Factory(:school)
      @schools = School.find(:first)
    end

    it "should render the show template" do
      get :show, :id => @schools
      response.should render_template("schools/show")
    end

    describe "edit action should render edit template" do
      it "should be successful" do
        get :edit, :id => @schools
        response.should render_template("schools/edit")
      end
    end
  end

  describe '#create' do
    before do
      post :create, :school => FactoryGirl.attributes_for(:school)
      @schools = School.find(:first)
      @response = response
    end

    it "should create a school" do
      School.all.size.should == 1
    end

    it "should redirect to that school" do
      @response.should redirect_to(@schools)
    end
  end

  describe '#update' do
    before do
      @schools = Factory(:school)
      put :update, :id => @schools.id, :school => { :name => "Awesometown High School" }
    end

    it "should update the school name" do
      @schools.reload.name.should == "Awesometown High School"
    end
  end

  describe '#destroy' do
    before do
      @schools = Factory(:school)
      @schools_count = School.all.size
      delete :destroy, :id => @schools.id
    end

    it "should destroy an award" do
      School.all.size.should == @schools_count - 1
      expect{@schools.reload}.to raise_error ActiveRecord::RecordNotFound
    end

    it "should redirect to that schools_url" do
      @response.should redirect_to(schools_url)
    end
  end
end
