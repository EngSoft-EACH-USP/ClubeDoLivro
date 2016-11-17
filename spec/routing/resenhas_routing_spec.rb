require "rails_helper"

RSpec.describe ResenhasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/resenhas").to route_to("resenhas#index")
    end

    it "routes to #new" do
      expect(:get => "/resenhas/new").to route_to("resenhas#new")
    end

    it "routes to #show" do
      expect(:get => "/resenhas/1").to route_to("resenhas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/resenhas/1/edit").to route_to("resenhas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/resenhas").to route_to("resenhas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/resenhas/1").to route_to("resenhas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/resenhas/1").to route_to("resenhas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/resenhas/1").to route_to("resenhas#destroy", :id => "1")
    end

  end
end
