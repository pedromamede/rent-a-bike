require "rails_helper"

RSpec.describe PontosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/pontos").to route_to("pontos#index")
    end

    it "routes to #new" do
      expect(get: "/pontos/new").to route_to("pontos#new")
    end

    it "routes to #show" do
      expect(get: "/pontos/1").to route_to("pontos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/pontos/1/edit").to route_to("pontos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/pontos").to route_to("pontos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/pontos/1").to route_to("pontos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/pontos/1").to route_to("pontos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/pontos/1").to route_to("pontos#destroy", id: "1")
    end
  end
end
