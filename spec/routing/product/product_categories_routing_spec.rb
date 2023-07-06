require "rails_helper"

module Product
  RSpec.describe ProductCategoriesController, type: :routing do
    describe "routing" do
      xit "routes to #index" do
        expect(get: "/product_categories").to route_to("product_categories#index")
      end

      xit "routes to #new" do
        expect(get: "/product_categories/new").to route_to("product_categories#new")
      end

      xit "routes to #show" do
        expect(get: "/product_categories/1").to route_to("product_categories#show", id: "1")
      end

      xit "routes to #edit" do
        expect(get: "/product_categories/1/edit").to route_to("product_categories#edit", id: "1")
      end


      xit "routes to #create" do
        expect(post: "/product_categories").to route_to("product_categories#create")
      end

      xit "routes to #update via PUT" do
        expect(put: "/product_categories/1").to route_to("product_categories#update", id: "1")
      end

      xit "routes to #update via PATCH" do
        expect(patch: "/product_categories/1").to route_to("product_categories#update", id: "1")
      end

      xit "routes to #destroy" do
        expect(delete: "/product_categories/1").to route_to("product_categories#destroy", id: "1")
      end
    end
  end
end
