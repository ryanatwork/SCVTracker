require "spec_helper"

describe CrimesController do
  describe "routing" do

    it "routes to #index" do
      get("/crimes").should route_to("crimes#index")
    end

    it "routes to #new" do
      get("/crimes/new").should route_to("crimes#new")
    end

    it "routes to #show" do
      get("/crimes/1").should route_to("crimes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/crimes/1/edit").should route_to("crimes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/crimes").should route_to("crimes#create")
    end

    it "routes to #update" do
      put("/crimes/1").should route_to("crimes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/crimes/1").should route_to("crimes#destroy", :id => "1")
    end

  end
end
