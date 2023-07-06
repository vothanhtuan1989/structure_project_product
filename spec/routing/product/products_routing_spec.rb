require "rails_helper"

module Product
  RSpec.describe ProductsController, type: :routing do
    describe "routing" do
      xit "routes to #index" do
        expect(get: "/products").to route_to("products#index")
      end

      xit "routes to #new" do
        expect(get: "/products/new").to route_to("products#new")
      end

      xit "routes to #show" do
        expect(get: "/products/1").to route_to("products#show", id: "1")
      end

      xit "routes to #edit" do
        expect(get: "/products/1/edit").to route_to("products#edit", id: "1")
      end


      xit "routes to #create" do
        expect(post: "/products").to route_to("products#create")
      end

      xit "routes to #update via PUT" do
        expect(put: "/products/1").to route_to("products#update", id: "1")
      end

      xit "routes to #update via PATCH" do
        expect(patch: "/products/1").to route_to("products#update", id: "1")
      end

      xit "routes to #destroy" do
        expect(delete: "/products/1").to route_to("products#destroy", id: "1")
      end
    end
  end
end
