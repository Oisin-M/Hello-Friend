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

ActiveRecord::Schema.define(version: 2020_07_21_205105) do

  create_table "accounts", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "account_id", null: false
    t.integer "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_conversations_on_account_id"
    t.index ["project_id"], name: "index_conversations_on_project_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.integer "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "swipe_id", null: false
    t.index ["account_id"], name: "index_messages_on_account_id"
    t.index ["swipe_id"], name: "index_messages_on_swipe_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "account_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "skills"
    t.index ["account_id"], name: "index_profiles_on_account_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_projects_on_account_id"
  end

  create_table "swipes", force: :cascade do |t|
    t.integer "account_id", null: false
    t.integer "project_id", null: false
    t.boolean "liked"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_swipes_on_account_id"
    t.index ["project_id"], name: "index_swipes_on_project_id"
  end

  add_foreign_key "conversations", "accounts"
  add_foreign_key "conversations", "projects"
  add_foreign_key "messages", "accounts"
  add_foreign_key "messages", "swipes"
  add_foreign_key "profiles", "accounts"
  add_foreign_key "projects", "accounts"
  add_foreign_key "swipes", "accounts"
  add_foreign_key "swipes", "projects"
end
