# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_06_075402) do
  create_table "product_product_categories", force: :cascade do |t|
    t.string "name"
    t.string "tag"
    t.integer "parent_id"
    t.boolean "active"
    t.integer "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_products", force: :cascade do |t|
    t.string "name"
    t.string "product_code"
    t.integer "product_type"
    t.string "material"
    t.integer "unit"
    t.integer "length"
    t.integer "width"
    t.integer "height"
    t.integer "buy_price"
    t.integer "sell_price"
    t.text "decription"
    t.integer "available_number"
    t.integer "minimum_number"
    t.integer "sell_number"
    t.boolean "active"
    t.integer "priority"
    t.string "photo"
    t.integer "product_category_id"
    t.integer "warehouse_position_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
