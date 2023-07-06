require "application_system_test_case"

module Product
  class ProductCategoriesTest < ApplicationSystemTestCase
    setup do
      @product_category = product_product_categories(:one)
    end

    test "visiting the index" do
      visit product_categories_url
      assert_selector "h1", text: "Product categories"
    end

    test "should create product category" do
      visit product_categories_url
      click_on "New product category"

      check "Active" if @product_category.active
      fill_in "Name", with: @product_category.name
      fill_in "Parent", with: @product_category.parent_id
      fill_in "Priority", with: @product_category.priority
      fill_in "Tag", with: @product_category.tag
      click_on "Create Product category"

      assert_text "Product category was successfully created"
      click_on "Back"
    end

    test "should update Product category" do
      visit product_category_url(@product_category)
      click_on "Edit this product category", match: :first

      check "Active" if @product_category.active
      fill_in "Name", with: @product_category.name
      fill_in "Parent", with: @product_category.parent_id
      fill_in "Priority", with: @product_category.priority
      fill_in "Tag", with: @product_category.tag
      click_on "Update Product category"

      assert_text "Product category was successfully updated"
      click_on "Back"
    end

    test "should destroy Product category" do
      visit product_category_url(@product_category)
      click_on "Destroy this product category", match: :first

      assert_text "Product category was successfully destroyed"
    end
  end
end
