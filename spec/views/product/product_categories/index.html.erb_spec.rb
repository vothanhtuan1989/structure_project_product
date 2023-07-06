require 'rails_helper'

module Product
  RSpec.describe "product_categories/index", type: :view do
    before(:each) do
      assign(:product_categories, [
        ProductCategory.create!(
          name: "Name",
          tag: "Tag",
          parent_id: 2,
          active: false,
          priority: 3
        ),
        ProductCategory.create!(
          name: "Name",
          tag: "Tag",
          parent_id: 2,
          active: false,
          priority: 3
        )
      ])
    end

    xit "renders a list of product_categories" do
      render
      assert_select "tr>td", text: "Name".to_s, count: 2
      assert_select "tr>td", text: "Tag".to_s, count: 2
      assert_select "tr>td", text: 2.to_s, count: 2
      assert_select "tr>td", text: false.to_s, count: 2
      assert_select "tr>td", text: 3.to_s, count: 2
    end
  end
end
