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

ActiveRecord::Schema.define(version: 2022_06_30_235136) do

  create_table "customers", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "email", limit: 320
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
  end

  create_table "installers", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true, null: false
    t.string "country", limit: 2, null: false
    t.integer "pricing", default: 2, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.string "country", limit: 2
    t.integer "system_size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_projects_on_customer_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "installer_id", null: false
    t.decimal "price", precision: 10, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["installer_id"], name: "index_quotes_on_installer_id"
    t.index ["project_id"], name: "index_quotes_on_project_id"
  end

  add_foreign_key "projects", "customers"
  add_foreign_key "quotes", "installers"
  add_foreign_key "quotes", "projects"
end
