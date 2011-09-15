require 'spec_helper'

describe StudentsController do

  login_user

  it "should have a current_user" do
    subject.current_user.should_not be_nil
  end



  describe "#index" do
    it "should render the index template" do
      get :index
      response.should render_template("students/index")
    end
  end

  describe "#show and #edit" do
    before do
      Factory(:student)
      @students = Student.find(:first)
    end

    it "should render the show template" do
      get :show, :id => @students
        response.should render_template("students/show")
      end

    describe "edit action should render edit template" do
      it "should be successful" do
        get :edit, :id => @students
        response.should render_template("students/edit")
      end
    end
  end

  describe '#create' do
    before do
      post :create, :student => FactoryGirl.attributes_for(:student)
      @students = Student.find(:first)
      @response = response
    end

    it "should create a student" do
      Student.all.size.should == 1
    end

    it "should redirect to that student" do
      @response.should redirect_to(@students)
    end
  end

  describe '#update' do
    before do
      @students = Factory(:student)
      put :update, :id => @students.id, :student => { :first_name => "Bob" }
    end

    it "should update the student first name" do
      @students.reload.first_name.should == "Bob"
    end
  end

  describe '#destroy' do
    before do
      @students = Factory(:student)
      @students_count = Student.all.size
      delete :destroy, :id => @students.id
    end

    it "should destroy a student" do
      Student.all.size.should == @students_count - 1
      expect{@students.reload}.to raise_error ActiveRecord::RecordNotFound
    end

    it "should redirect to that students_url" do
      @response.should redirect_to(students_url)
    end
  end
end
