require 'rails_helper'

module Product
  RSpec.describe "products/show", type: :view do
    before(:each) do
      @product = assign(:product, Product.create!(
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
      ))
    end

    xit "renders attributes in <p>" do
      render
      expect(rendered).to match(/Name/)
      expect(rendered).to match(/Product Code/)
      expect(rendered).to match(/2/)
      expect(rendered).to match(/Material/)
      expect(rendered).to match(/3/)
      expect(rendered).to match(/4/)
      expect(rendered).to match(/5/)
      expect(rendered).to match(/6/)
      expect(rendered).to match(/7/)
      expect(rendered).to match(/8/)
      expect(rendered).to match(/MyText/)
      expect(rendered).to match(/9/)
      expect(rendered).to match(/10/)
      expect(rendered).to match(/11/)
      expect(rendered).to match(/false/)
      expect(rendered).to match(/12/)
      expect(rendered).to match(/Photo/)
      expect(rendered).to match(/13/)
      expect(rendered).to match(/14/)
    end
  end
end