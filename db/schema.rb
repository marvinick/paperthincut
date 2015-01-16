# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150116164734) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: true do |t|
    t.string   "chef"
    t.string   "costumer"
    t.text     "background"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authorizations", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.string   "token"
    t.string   "secret"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "backouts", force: true do |t|
    t.string   "month"
    t.string   "name"
    t.string   "unit"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "item1"
    t.string   "item2"
    t.string   "item3"
    t.string   "item4"
    t.string   "item5"
    t.string   "item6"
    t.string   "item7"
    t.string   "item8"
    t.string   "item9"
    t.string   "item10"
    t.integer  "amount1"
    t.integer  "amount2"
    t.integer  "amount3"
    t.integer  "amount4"
    t.integer  "amount5"
    t.integer  "amount6"
    t.integer  "amount7"
    t.integer  "amount8"
    t.integer  "amount9"
    t.integer  "amount10"
  end

  create_table "baskets", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "info"
  end

  create_table "carts", force: true do |t|
  end

  create_table "distributors", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "good_distributors", force: true do |t|
    t.integer  "distributor_id"
    t.integer  "good_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "good_inventories", force: true do |t|
    t.integer  "good_id"
    t.integer  "inventory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goods", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "amount"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cost"
    t.string   "unit"
    t.integer  "inventory_id"
    t.decimal  "quantity"
  end

  create_table "inventories", force: true do |t|
    t.string   "name"
    t.string   "unit"
    t.text     "description"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price"
    t.string   "email"
  end

  create_table "items", force: true do |t|
    t.integer  "good_id"
    t.integer  "basket_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "amount",     default: 1
    t.integer  "order_id"
    t.integer  "request_id"
  end

  add_index "items", ["basket_id"], name: "index_items_on_basket_id", using: :btree
  add_index "items", ["good_id"], name: "index_items_on_good_id", using: :btree

  create_table "line_items", force: true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_items", ["cart_id"], name: "index_line_items_on_cart_id", using: :btree
  add_index "line_items", ["product_id"], name: "index_line_items_on_product_id", using: :btree

  create_table "members", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "image"
  end

  create_table "product_vendors", force: true do |t|
    t.integer  "vendor_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity"
  end

  create_table "request_categories", force: true do |t|
    t.integer  "request_id"
    t.integer  "good_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "request_distributors", force: true do |t|
    t.integer  "distributor_id"
    t.integer  "request_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "additional"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "item_id"
    t.integer  "good_id"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "created_at"
    t.string   "email2",                 default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email2"], name: "index_users_on_email2", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vendors", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", force: true do |t|
    t.string   "country"
    t.datetime "visited_at"
    t.decimal  "load_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
