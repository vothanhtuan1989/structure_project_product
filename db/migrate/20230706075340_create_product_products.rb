class CreateProductProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :product_products do |t|
      t.string :name
      t.string :product_code
      t.integer :product_type
      t.string :material
      t.integer :unit
      t.integer :length
      t.integer :width
      t.integer :height
      t.integer :buy_price
      t.integer :sell_price
      t.text :decription
      t.integer :available_number
      t.integer :minimum_number
      t.integer :sell_number
      t.boolean :active
      t.integer :priority
      t.string :photo
      t.integer :product_category_id
      t.integer :warehouse_position_id

      t.timestamps
    end
  end
end
