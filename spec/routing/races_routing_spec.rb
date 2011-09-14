require "spec_helper"

describe RacesController do
  describe "routing" do

    it "routes to #index" do
      get("/races").should route_to("races#index")
    end

    it "routes to #new" do
      get("/races/new").should route_to("races#new")
    end

    it "routes to #show" do
      get("/races/1").should route_to("races#show", :id => "1")
    end

    it "routes to #edit" do
      get("/races/1/edit").should route_to("races#edit", :id => "1")
    end

    it "routes to #create" do
      post("/races").should route_to("races#create")
    end

    it "routes to #update" do
      put("/races/1").should route_to("races#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/races/1").should route_to("races#destroy", :id => "1")
    end

  end
end
