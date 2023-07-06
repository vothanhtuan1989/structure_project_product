require 'rails_helper'

module Product
  RSpec.describe "products/index", type: :view do
    before(:each) do
      assign(:products, [
        Product.create!(
          name: "Name",
          product_code: "Product Code",
          product_type: 2,
          material: "Material",
          unit: 3,
          length: 4,
          width: 5,
          height: 6,
          buy_price: 7,
          sell_price: 8,
          decription: "MyText",
          available_number: 9,
          minimum_number: 10,
          sell_number: 11,
          active: false,
          priority: 12,
          photo: "Photo",
          product_category_id: 13,
          warehouse_position_id: 14
        ),
        Product.create!(
          name: "Name",
          product_code: "Product Code",
          product_type: 2,
          material: "Material",
          unit: 3,
          length: 4,
          width: 5,
          height: 6,
          buy_price: 7,
          sell_price: 8,
          decription: "MyText",
          available_number: 9,
          minimum_number: 10,
          sell_number: 11,
          active: false,
          priority: 12,
          photo: "Photo",
          product_category_id: 13,
          warehouse_position_id: 14
        )
      ])
    end

    xit "renders a list of products" do
      render
      assert_select "tr>td", text: "Name".to_s, count: 2
      assert_select "tr>td", text: "Product Code".to_s, count: 2
      assert_select "tr>td", text: 2.to_s, count: 2
      assert_select "tr>td", text: "Material".to_s, count: 2
      assert_select "tr>td", text: 3.to_s, count: 2
      assert_select "tr>td", text: 4.to_s, count: 2
      assert_select "tr>td", text: 5.to_s, count: 2
      assert_select "tr>td", text: 6.to_s, count: 2
      assert_select "tr>td", text: 7.to_s, count: 2
      assert_select "tr>td", text: 8.to_s, count: 2
      assert_select "tr>td", text: "MyText".to_s, count: 2
      assert_select "tr>td", text: 9.to_s, count: 2
      assert_select "tr>td", text: 10.to_s, count: 2
      assert_select "tr>td", text: 11.to_s, count: 2
      assert_select "tr>td", text: false.to_s, count: 2
      assert_select "tr>td", text: 12.to_s, count: 2
      assert_select "tr>td", text: "Photo".to_s, count: 2
      assert_select "tr>td", text: 13.to_s, count: 2
      assert_select "tr>td", text: 14.to_s, count: 2
    end
  end
end
