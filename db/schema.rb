# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_04_154412) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "categoryId", null: false
    t.string "categoryName", null: false
    t.text "description"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id", null: false
    t.index ["product_id"], name: "index_categories_on_product_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "customerId", null: false
    t.string "firstName", null: false
    t.string "lastName", null: false
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "postalCode"
    t.string "country"
    t.string "phone", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.string "creditCardType"
    t.string "creditCardNumber", null: false
    t.string "creditCardAddress"
    t.string "shipAddress"
    t.string "dateEntered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.string "orderId", null: false
    t.string "productId", null: false
    t.string "orderNumber", null: false
    t.decimal "price", precision: 15, scale: 2, null: false
    t.string "quantity", null: false
    t.string "discount"
    t.decimal "total", null: false
    t.string "orderDetailId", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "products_id", null: false
    t.index ["products_id"], name: "index_order_details_on_products_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "orderId", null: false
    t.string "customerId", null: false
    t.string "orderName"
    t.string "paymentId", null: false
    t.text "orderDate"
    t.text "shipDate"
    t.string "paid", null: false
    t.text "paymentDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "order_details_id", null: false
    t.bigint "payment_id", null: false
    t.bigint "customers_id", null: false
    t.bigint "shippers_id", null: false
    t.index ["customers_id"], name: "index_orders_on_customers_id"
    t.index ["order_details_id"], name: "index_orders_on_order_details_id"
    t.index ["payment_id"], name: "index_orders_on_payment_id"
    t.index ["shippers_id"], name: "index_orders_on_shippers_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "paymentId", null: false
    t.string "paymentType"
    t.string "allowed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "productId", null: false
    t.string "productTitle", null: false
    t.text "productDescription"
    t.string "supplierId", null: false
    t.string "categoryId", null: false
    t.decimal "price", precision: 15, scale: 2, null: false
    t.string "size"
    t.string "color"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "suppliers_id", null: false
    t.bigint "order_details_id", null: false
    t.index ["order_details_id"], name: "index_products_on_order_details_id"
    t.index ["suppliers_id"], name: "index_products_on_suppliers_id"
  end

  create_table "shippers", force: :cascade do |t|
    t.string "shipperId", null: false
    t.string "companyName", null: false
    t.string "phone", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "supplierId", null: false
    t.string "companyName", null: false
    t.string "contactName"
    t.string "contactTitle"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "postalCode"
    t.string "country"
    t.string "phone", null: false
    t.string "email", null: false
    t.string "url"
    t.string "customerId", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "categories", "products"
  add_foreign_key "order_details", "products", column: "products_id"
  add_foreign_key "orders", "customers", column: "customers_id"
  add_foreign_key "orders", "order_details", column: "order_details_id"
  add_foreign_key "orders", "payments"
  add_foreign_key "orders", "shippers", column: "shippers_id"
  add_foreign_key "products", "order_details", column: "order_details_id"
  add_foreign_key "products", "suppliers", column: "suppliers_id"
end
