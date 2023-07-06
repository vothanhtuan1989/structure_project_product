require "application_system_test_case"

module Product
  class ProductsTest < ApplicationSystemTestCase
    setup do
      @product = product_products(:one)
    end

    test "visiting the index" do
      visit products_url
      assert_selector "h1", text: "Products"
    end

    test "should create product" do
      visit products_url
      click_on "New product"

      check "Active" if @product.active
      fill_in "Available number", with: @product.available_number
      fill_in "Buy price", with: @product.buy_price
      fill_in "Decription", with: @product.decription
      fill_in "Height", with: @product.height
      fill_in "Length", with: @product.length
      fill_in "Material", with: @product.material
      fill_in "Minimum number", with: @product.minimum_number
      fill_in "Name", with: @product.name
      fill_in "Photo", with: @product.photo
      fill_in "Priority", with: @product.priority
      fill_in "Product category", with: @product.product_category_id
      fill_in "Product code", with: @product.product_code
      fill_in "Product type", with: @product.product_type
      fill_in "Sell number", with: @product.sell_number
      fill_in "Sell price", with: @product.sell_price
      fill_in "Unit", with: @product.unit
      fill_in "Warehouse position", with: @product.warehouse_position_id
      fill_in "Width", with: @product.width
      click_on "Create Product"

      assert_text "Product was successfully created"
      click_on "Back"
    end

    test "should update Product" do
      visit product_url(@product)
      click_on "Edit this product", match: :first

      check "Active" if @product.active
      fill_in "Available number", with: @product.available_number
      fill_in "Buy price", with: @product.buy_price
      fill_in "Decription", with: @product.decription
      fill_in "Height", with: @product.height
      fill_in "Length", with: @product.length
      fill_in "Material", with: @product.material
      fill_in "Minimum number", with: @product.minimum_number
      fill_in "Name", with: @product.name
      fill_in "Photo", with: @product.photo
      fill_in "Priority", with: @product.priority
      fill_in "Product category", with: @product.product_category_id
      fill_in "Product code", with: @product.product_code
      fill_in "Product type", with: @product.product_type
      fill_in "Sell number", with: @product.sell_number
      fill_in "Sell price", with: @product.sell_price
      fill_in "Unit", with: @product.unit
      fill_in "Warehouse position", with: @product.warehouse_position_id
      fill_in "Width", with: @product.width
      click_on "Update Product"

      assert_text "Product was successfully updated"
      click_on "Back"
    end

    test "should destroy Product" do
      visit product_url(@product)
      click_on "Destroy this product", match: :first

      assert_text "Product was successfully destroyed"
    end
  end
end
