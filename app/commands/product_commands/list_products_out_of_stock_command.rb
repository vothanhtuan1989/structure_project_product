module ProductCommands
  class ListProductsOutOfStockCommand
    prepend SimpleCommand

    def call
      product_ids = []
      Product::Product.find_in_batches do |products|
        # products is an array of Product objects
        products.each do |product|
          # do something with product
          product_ids << product.id if product.available_number.zero?
        end
      end

      product_ids
    end
  end
end