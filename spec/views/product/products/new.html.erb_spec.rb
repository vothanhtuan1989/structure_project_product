require 'rails_helper'

module Product
  RSpec.describe "products/new", type: :view do
    before(:each) do
      assign(:product, Product.new(
        name: "MyString",
        product_code: "MyString",
        product_type: 1,
        material: "MyString",
        unit: 1,
        length: 1,
        width: 1,
        height: 1,
        buy_price: 1,
        sell_price: 1,
        decription: "MyText",
        available_number: 1,
        minimum_number: 1,
        sell_number: 1,
        active: false,
        priority: 1,
        photo: "MyString",
        product_category_id: 1,
        warehouse_position_id: 1
      ))
    end

    xit "renders new product form" do
      render

      assert_select "form[action=?][method=?]", products_path, "post" do

        assert_select "input[name=?]", "product[name]"

        assert_select "input[name=?]", "product[product_code]"

        assert_select "input[name=?]", "product[product_type]"

        assert_select "input[name=?]", "product[material]"

        assert_select "input[name=?]", "product[unit]"

        assert_select "input[name=?]", "product[length]"

        assert_select "input[name=?]", "product[width]"

        assert_select "input[name=?]", "product[height]"

        assert_select "input[name=?]", "product[buy_price]"

        assert_select "input[name=?]", "product[sell_price]"

        assert_select "textarea[name=?]", "product[decription]"

        assert_select "input[name=?]", "product[available_number]"

        assert_select "input[name=?]", "product[minimum_number]"

        assert_select "input[name=?]", "product[sell_number]"

        assert_select "input[name=?]", "product[active]"

        assert_select "input[name=?]", "product[priority]"

        assert_select "input[name=?]", "product[photo]"

        assert_select "input[name=?]", "product[product_category_id]"

        assert_select "input[name=?]", "product[warehouse_position_id]"
      end
    end
  end
end
