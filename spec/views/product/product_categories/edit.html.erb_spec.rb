require 'rails_helper'

module Product
  RSpec.describe "product_categories/edit", type: :view do
    before(:each) do
      @product_category = assign(:product_category, ProductCategory.create!(
        name: "MyString",
        tag: "MyString",
        parent_id: 1,
        active: false,
        priority: 1
      ))
    end

    xit "renders the edit product_category form" do
      render

      assert_select "form[action=?][method=?]", product_category_path(@product_category), "post" do

        assert_select "input[name=?]", "product_category[name]"

        assert_select "input[name=?]", "product_category[tag]"

        assert_select "input[name=?]", "product_category[parent_id]"

        assert_select "input[name=?]", "product_category[active]"

        assert_select "input[name=?]", "product_category[priority]"
      end
    end
  end
end
