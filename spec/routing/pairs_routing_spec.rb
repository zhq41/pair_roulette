require "rails_helper"

RSpec.describe PairsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pairs").to route_to("pairs#index")
    end

    it "routes to #new" do
      expect(:get => "/pairs/new").to route_to("pairs#new")
    end

    it "routes to #show" do
      expect(:get => "/pairs/1").to route_to("pairs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pairs/1/edit").to route_to("pairs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pairs").to route_to("pairs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pairs/1").to route_to("pairs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pairs/1").to route_to("pairs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pairs/1").to route_to("pairs#destroy", :id => "1")
    end

  end
end
