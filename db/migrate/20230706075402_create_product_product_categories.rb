class CreateProductProductCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :product_product_categories do |t|
      t.string :name
      t.string :tag
      t.integer :parent_id
      t.boolean :active
      t.integer :priority

      t.timestamps
    end
  end
end
