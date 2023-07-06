module Product
  FactoryBot.define do
    factory :product_category, class: ProductCategory do
      name { "MyString" }
      tag { "MyString" }
      parent_id { 1 }
      active { false }
      priority { 1 }
    end
  end
end
