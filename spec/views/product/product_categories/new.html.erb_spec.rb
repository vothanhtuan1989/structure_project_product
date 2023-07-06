require 'rails_helper'

module Product
  RSpec.describe "product_categories/new", type: :view do
    before(:each) do
      assign(:product_category, ProductCategory.new(
        name: "MyString",
        tag: "MyString",
        parent_id: 1,
        active: false,
        priority: 1
      ))
    end

    xit "renders new product_category form" do
      render

      assert_select "form[action=?][method=?]", product_categories_path, "post" do

        assert_select "input[name=?]", "product_category[name]"

        assert_select "input[name=?]", "product_category[tag]"

        assert_select "input[name=?]", "product_category[parent_id]"

        assert_select "input[name=?]", "product_category[active]"

        assert_select "input[name=?]", "product_category[priority]"
      end
    end
  end
end
