require "test_helper"

module Product
  class ProductCategoriesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @product_category = product_product_categories(:one)
    end

    test "should get index" do
      get product_categories_url
      assert_response :success
    end

    test "should get new" do
      get new_product_category_url
      assert_response :success
    end

    test "should create product_category" do
      assert_difference("ProductCategory.count") do
        post product_categories_url, params: { product_category: { active: @product_category.active, name: @product_category.name, parent_id: @product_category.parent_id, priority: @product_category.priority, tag: @product_category.tag } }
      end

      assert_redirected_to product_category_url(ProductCategory.last)
    end

    test "should show product_category" do
      get product_category_url(@product_category)
      assert_response :success
    end

    test "should get edit" do
      get edit_product_category_url(@product_category)
      assert_response :success
    end

    test "should update product_category" do
      patch product_category_url(@product_category), params: { product_category: { active: @product_category.active, name: @product_category.name, parent_id: @product_category.parent_id, priority: @product_category.priority, tag: @product_category.tag } }
      assert_redirected_to product_category_url(@product_category)
    end

    test "should destroy product_category" do
      assert_difference("ProductCategory.count", -1) do
        delete product_category_url(@product_category)
      end

      assert_redirected_to product_categories_url
    end
  end
end
