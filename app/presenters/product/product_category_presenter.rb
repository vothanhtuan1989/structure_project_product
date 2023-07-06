module Product
  class ProductCategoryPresenter < ApplicationPresenter
    attr_reader :product_category

    def initialize(product_category)
      @product_category = product_category
    end
  end
end