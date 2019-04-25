require "rails_helper"

RSpec.describe NationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/nations").to route_to("nations#index")
    end


    it "routes to #show" do
      expect(:get => "/nations/1").to route_to("nations#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/nations").to route_to("nations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/nations/1").to route_to("nations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/nations/1").to route_to("nations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/nations/1").to route_to("nations#destroy", :id => "1")
    end

  end
end
