module Product
  class ProductPresenter < ApplicationPresenter
    attr_reader :product

    def initialize(product)
      @product = product
    end
  end
end