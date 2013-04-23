require "spec_helper"

describe InstructionsController do
  describe "routing" do

    it "routes to #index" do
      get("/instructions").should route_to("instructions#index")
    end

    it "routes to #new" do
      get("/instructions/new").should route_to("instructions#new")
    end

    it "routes to #show" do
      get("/instructions/1").should route_to("instructions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/instructions/1/edit").should route_to("instructions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/instructions").should route_to("instructions#create")
    end

    it "routes to #update" do
      put("/instructions/1").should route_to("instructions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/instructions/1").should route_to("instructions#destroy", :id => "1")
    end

  end
end
