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

ActiveRecord::Schema.define(version: 2021_01_23_005114) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.boolean "lost"
    t.integer "source_id", null: false
    t.integer "rep_id", null: false
    t.date "client_on"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "lost_on"
    t.index ["rep_id"], name: "index_clients_on_rep_id"
    t.index ["source_id"], name: "index_clients_on_source_id"
  end

  create_table "company_locations", force: :cascade do |t|
    t.string "location_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_names", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reps", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sales", force: :cascade do |t|
    t.string "name"
    t.boolean "new_client"
    t.boolean "new_money"
    t.integer "opening_amount"
    t.integer "first_year_comp"
    t.integer "renewal_comp"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "issued_on"
    t.boolean "recurring"
    t.integer "rep_id", null: false
    t.integer "source_id", null: false
    t.integer "company_location_id", null: false
    t.integer "product_company_id", null: false
    t.integer "product_type_id", null: false
    t.string "product_name"
    t.integer "client_id", null: false
    t.index ["client_id"], name: "index_sales_on_client_id"
    t.index ["company_location_id"], name: "index_sales_on_company_location_id"
    t.index ["product_company_id"], name: "index_sales_on_product_company_id"
    t.index ["product_type_id"], name: "index_sales_on_product_type_id"
    t.index ["rep_id"], name: "index_sales_on_rep_id"
    t.index ["source_id"], name: "index_sales_on_source_id"
    t.index ["user_id"], name: "index_sales_on_user_id"
  end

  create_table "sources", force: :cascade do |t|
    t.string "source_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "clients", "reps"
  add_foreign_key "clients", "sources"
  add_foreign_key "sales", "clients"
  add_foreign_key "sales", "company_locations"
  add_foreign_key "sales", "product_companies"
  add_foreign_key "sales", "product_types"
  add_foreign_key "sales", "reps"
  add_foreign_key "sales", "sources"
end
