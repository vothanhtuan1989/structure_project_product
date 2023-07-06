module Product
  FactoryBot.define do
    factory :product, class: Product do
      name { "MyString" }
      product_code { "MyString" }
      product_type { 1 }
      material { "MyString" }
      unit { 1 }
      length { 1 }
      width { 1 }
      height { 1 }
      buy_price { 1 }
      sell_price { 1 }
      decription { "MyText" }
      available_number { 1 }
      minimum_number { 1 }
      sell_number { 1 }
      active { false }
      priority { 1 }
      photo { "MyString" }
      product_category_id { 1 }
      warehouse_position_id { 1 }
    end
  end
end
