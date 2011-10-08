require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CrimeTipsController do

  # This should return the minimal set of attributes required to create a valid
  # CrimeTip. As you add validations to CrimeTip, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all crime_tips as @crime_tips" do
      crime_tip = CrimeTip.create! valid_attributes
      get :index
      assigns(:crime_tips).should eq([crime_tip])
    end
  end

  describe "GET show" do
    it "assigns the requested crime_tip as @crime_tip" do
      crime_tip = CrimeTip.create! valid_attributes
      get :show, :id => crime_tip.id.to_s
      assigns(:crime_tip).should eq(crime_tip)
    end
  end

  describe "GET new" do
    it "assigns a new crime_tip as @crime_tip" do
      get :new
      assigns(:crime_tip).should be_a_new(CrimeTip)
    end
  end

  describe "GET edit" do
    it "assigns the requested crime_tip as @crime_tip" do
      crime_tip = CrimeTip.create! valid_attributes
      get :edit, :id => crime_tip.id.to_s
      assigns(:crime_tip).should eq(crime_tip)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CrimeTip" do
        expect {
          post :create, :crime_tip => valid_attributes
        }.to change(CrimeTip, :count).by(1)
      end

      it "assigns a newly created crime_tip as @crime_tip" do
        post :create, :crime_tip => valid_attributes
        assigns(:crime_tip).should be_a(CrimeTip)
        assigns(:crime_tip).should be_persisted
      end

      it "redirects to the created crime_tip" do
        post :create, :crime_tip => valid_attributes
        response.should redirect_to(CrimeTip.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved crime_tip as @crime_tip" do
        # Trigger the behavior that occurs when invalid params are submitted
        CrimeTip.any_instance.stub(:save).and_return(false)
        post :create, :crime_tip => {}
        assigns(:crime_tip).should be_a_new(CrimeTip)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CrimeTip.any_instance.stub(:save).and_return(false)
        post :create, :crime_tip => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested crime_tip" do
        crime_tip = CrimeTip.create! valid_attributes
        # Assuming there are no other crime_tips in the database, this
        # specifies that the CrimeTip created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CrimeTip.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => crime_tip.id, :crime_tip => {'these' => 'params'}
      end

      it "assigns the requested crime_tip as @crime_tip" do
        crime_tip = CrimeTip.create! valid_attributes
        put :update, :id => crime_tip.id, :crime_tip => valid_attributes
        assigns(:crime_tip).should eq(crime_tip)
      end

      it "redirects to the crime_tip" do
        crime_tip = CrimeTip.create! valid_attributes
        put :update, :id => crime_tip.id, :crime_tip => valid_attributes
        response.should redirect_to(crime_tip)
      end
    end

    describe "with invalid params" do
      it "assigns the crime_tip as @crime_tip" do
        crime_tip = CrimeTip.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CrimeTip.any_instance.stub(:save).and_return(false)
        put :update, :id => crime_tip.id.to_s, :crime_tip => {}
        assigns(:crime_tip).should eq(crime_tip)
      end

      it "re-renders the 'edit' template" do
        crime_tip = CrimeTip.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CrimeTip.any_instance.stub(:save).and_return(false)
        put :update, :id => crime_tip.id.to_s, :crime_tip => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested crime_tip" do
      crime_tip = CrimeTip.create! valid_attributes
      expect {
        delete :destroy, :id => crime_tip.id.to_s
      }.to change(CrimeTip, :count).by(-1)
    end

    it "redirects to the crime_tips list" do
      crime_tip = CrimeTip.create! valid_attributes
      delete :destroy, :id => crime_tip.id.to_s
      response.should redirect_to(crime_tips_url)
    end
  end

end