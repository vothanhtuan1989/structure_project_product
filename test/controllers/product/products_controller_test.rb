require "test_helper"

module Product
  class ProductsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @product = product_products(:one)
    end

    test "should get index" do
      get products_url
      assert_response :success
    end

    test "should get new" do
      get new_product_url
      assert_response :success
    end

    test "should create product" do
      assert_difference("Product.count") do
        post products_url, params: { product: { active: @product.active, available_number: @product.available_number, buy_price: @product.buy_price, decription: @product.decription, height: @product.height, length: @product.length, material: @product.material, minimum_number: @product.minimum_number, name: @product.name, photo: @product.photo, priority: @product.priority, product_category_id: @product.product_category_id, product_code: @product.product_code, product_type: @product.product_type, sell_number: @product.sell_number, sell_price: @product.sell_price, unit: @product.unit, warehouse_position_id: @product.warehouse_position_id, width: @product.width } }
      end

      assert_redirected_to product_url(Product.last)
    end

    test "should show product" do
      get product_url(@product)
      assert_response :success
    end

    test "should get edit" do
      get edit_product_url(@product)
      assert_response :success
    end

    test "should update product" do
      patch product_url(@product), params: { product: { active: @product.active, available_number: @product.available_number, buy_price: @product.buy_price, decription: @product.decription, height: @product.height, length: @product.length, material: @product.material, minimum_number: @product.minimum_number, name: @product.name, photo: @product.photo, priority: @product.priority, product_category_id: @product.product_category_id, product_code: @product.product_code, product_type: @product.product_type, sell_number: @product.sell_number, sell_price: @product.sell_price, unit: @product.unit, warehouse_position_id: @product.warehouse_position_id, width: @product.width } }
      assert_redirected_to product_url(@product)
    end

    test "should destroy product" do
      assert_difference("Product.count", -1) do
        delete product_url(@product)
      end

      assert_redirected_to products_url
    end
  end
end
