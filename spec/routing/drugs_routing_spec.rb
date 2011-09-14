require "spec_helper"

describe DrugsController do
  describe "routing" do

    it "routes to #index" do
      get("/drugs").should route_to("drugs#index")
    end

    it "routes to #new" do
      get("/drugs/new").should route_to("drugs#new")
    end

    it "routes to #show" do
      get("/drugs/1").should route_to("drugs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/drugs/1/edit").should route_to("drugs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/drugs").should route_to("drugs#create")
    end

    it "routes to #update" do
      put("/drugs/1").should route_to("drugs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/drugs/1").should route_to("drugs#destroy", :id => "1")
    end

  end
end
