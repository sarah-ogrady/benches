# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_27_174352) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "basket_products", force: :cascade do |t|
    t.bigint "bench_merchandise_id", null: false
    t.bigint "basket_id", null: false
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["basket_id"], name: "index_basket_products_on_basket_id"
    t.index ["bench_merchandise_id"], name: "index_basket_products_on_bench_merchandise_id"
  end

  create_table "baskets", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bench_merchandises", force: :cascade do |t|
    t.bigint "bench_id", null: false
    t.bigint "merchandise_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bench_id"], name: "index_bench_merchandises_on_bench_id"
    t.index ["merchandise_id"], name: "index_bench_merchandises_on_merchandise_id"
  end

  create_table "benches", force: :cascade do |t|
    t.float "longitude"
    t.float "latitude"
    t.text "inscription"
    t.integer "comfort_rating"
    t.string "dedication"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
    t.index ["user_id"], name: "index_benches_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "bench_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bench_id"], name: "index_favorites_on_bench_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "merchandises", force: :cascade do |t|
    t.string "item"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "price_cents", default: 0, null: false
    t.string "sku"
  end

  create_table "orders", force: :cascade do |t|
    t.string "state"
    t.string "merchandise_sku"
    t.integer "amount_cents", default: 0, null: false
    t.string "amount_currency", default: "GBP", null: false
    t.string "checkout_session_id"
    t.bigint "user_id", null: false
    t.bigint "merchandise_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["merchandise_id"], name: "index_orders_on_merchandise_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "basket_id"
    t.index ["basket_id"], name: "index_users_on_basket_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "basket_products", "baskets"
  add_foreign_key "basket_products", "bench_merchandises"
  add_foreign_key "bench_merchandises", "benches"
  add_foreign_key "bench_merchandises", "merchandises"
  add_foreign_key "benches", "users"
  add_foreign_key "favorites", "benches"
  add_foreign_key "favorites", "users"
  add_foreign_key "orders", "merchandises"
  add_foreign_key "orders", "users"
  add_foreign_key "users", "baskets"
end
