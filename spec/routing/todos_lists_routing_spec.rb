require "spec_helper"

describe TodosListsController do
  describe "routing" do

    it "routes to #index" do
      get("/todos_lists").should route_to("todos_lists#index")
    end

    it "routes to #new" do
      get("/todos_lists/new").should route_to("todos_lists#new")
    end

    it "routes to #show" do
      get("/todos_lists/1").should route_to("todos_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/todos_lists/1/edit").should route_to("todos_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/todos_lists").should route_to("todos_lists#create")
    end

    it "routes to #update" do
      put("/todos_lists/1").should route_to("todos_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/todos_lists/1").should route_to("todos_lists#destroy", :id => "1")
    end

  end
end
