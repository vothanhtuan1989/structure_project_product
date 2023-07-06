require 'rails_helper'

module Product
  RSpec.describe "product_categories/show", type: :view do
    before(:each) do
      @product_category = assign(:product_category, ProductCategory.create!(
        name: "Name",
        tag: "Tag",
        parent_id: 2,
        active: false,
        priority: 3
      ))
    end

    xit "renders attributes in <p>" do
      render
      expect(rendered).to match(/Name/)
      expect(rendered).to match(/Tag/)
      expect(rendered).to match(/2/)
      expect(rendered).to match(/false/)
      expect(rendered).to match(/3/)
    end
  end
end
