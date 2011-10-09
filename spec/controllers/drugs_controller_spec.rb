require 'spec_helper'

describe DrugsController do

  login_user

  it "should have a current_user" do
    subject.current_user.should_not be_nil
  end

  describe "#index" do
      it "should render the index template" do
        get :index
        response.should render_template("drugs/index")
      end
   end

   describe "#show and #edit" do
     before do
       Factory(:drug)
       @drugs = Drug.find(:first)
     end

     it "should render the show template" do
       get :show, :id => @drugs
       response.should render_template("drugs/show")
     end

     describe "edit action should render edit template" do
       it "should be successful" do
         get :edit, :id => @drugs
         response.should render_template("drugs/edit")
       end
     end
   end

   describe '#create' do
     before do
       post :create, :award => FactoryGirl.attributes_for(:drug)
       @drugs = Drug.find(:first)
       @response = response
     end

     it "should create a drug" do
       Drug.all.size.should == 1
     end

     it "should redirect to that drug" do
       @response.should redirect_to(@drugs)
     end
   end

   describe '#update' do
     before do
       @drugs = Factory(:drug)
       put :update, :id => @drugs.id, :drug => { :name => "Mushroom Star" }
     end

     it "should update the drug name" do
       @drugs.reload.name.should == "Mushroom Star"
     end
   end

   describe '#destroy' do
     before do
       @drugs = Factory(:drug)
       @drugs_count = Drug.all.size
       delete :destroy, :id => @drugs.id
     end

     it "should destroy a drug" do
       Drug.all.size.should == @drugs_count - 1
       expect{@drugs.reload}.to raise_error ActiveRecord::RecordNotFound
     end

     it "should redirect to that drugs_url" do
          @response.should redirect_to(drugs_url)
     end
   end

end
