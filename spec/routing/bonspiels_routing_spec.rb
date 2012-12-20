require "spec_helper"

describe BonspielsController do
  describe "routing" do

    it "routes to #index" do
      get("/bonspiels").should route_to("bonspiels#index")
    end

    it "routes to #new" do
      get("/bonspiels/new").should route_to("bonspiels#new")
    end

    it "routes to #show" do
      get("/bonspiels/1").should route_to("bonspiels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bonspiels/1/edit").should route_to("bonspiels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bonspiels").should route_to("bonspiels#create")
    end

    it "routes to #update" do
      put("/bonspiels/1").should route_to("bonspiels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bonspiels/1").should route_to("bonspiels#destroy", :id => "1")
    end

  end
end
