require "spec_helper"

describe CrimeTipsController do
  describe "routing" do

    it "routes to #index" do
      get("/crime_tips").should route_to("crime_tips#index")
    end

    it "routes to #new" do
      get("/crime_tips/new").should route_to("crime_tips#new")
    end

    it "routes to #show" do
      get("/crime_tips/1").should route_to("crime_tips#show", :id => "1")
    end

    it "routes to #edit" do
      get("/crime_tips/1/edit").should route_to("crime_tips#edit", :id => "1")
    end

    it "routes to #create" do
      post("/crime_tips").should route_to("crime_tips#create")
    end

    it "routes to #update" do
      put("/crime_tips/1").should route_to("crime_tips#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/crime_tips/1").should route_to("crime_tips#destroy", :id => "1")
    end

  end
end
