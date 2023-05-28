require "rails_helper"

RSpec.describe AlugueisController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/alugueis").to route_to("alugueis#index")
    end

    it "routes to #new" do
      expect(get: "/alugueis/new").to route_to("alugueis#new")
    end

    it "routes to #show" do
      expect(get: "/alugueis/1").to route_to("alugueis#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/alugueis/1/edit").to route_to("alugueis#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/alugueis").to route_to("alugueis#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/alugueis/1").to route_to("alugueis#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/alugueis/1").to route_to("alugueis#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/alugueis/1").to route_to("alugueis#destroy", id: "1")
    end
  end
end
