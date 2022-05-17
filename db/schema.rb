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

ActiveRecord::Schema.define(version: 2020_07_22_081945) do

  create_table "group_automation_for_users", force: :cascade do |t|
    t.integer "group_automation_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_automation_id"], name: "index_group_automation_for_users_on_group_automation_id"
    t.index ["user_id"], name: "index_group_automation_for_users_on_user_id"
  end

  create_table "group_automations", force: :cascade do |t|
    t.string "name"
    t.integer "group_id", null: false
    t.integer "guide_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_group_automations_on_group_id"
    t.index ["guide_id"], name: "index_group_automations_on_guide_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "groups_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "group_id", null: false
    t.index ["group_id"], name: "index_groups_users_on_group_id"
    t.index ["user_id"], name: "index_groups_users_on_user_id"
  end

  create_table "guides", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "guides_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "guide_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "group_automation_id", null: false
    t.index ["group_automation_id"], name: "index_guides_users_on_group_automation_id"
    t.index ["guide_id"], name: "index_guides_users_on_guide_id"
    t.index ["user_id"], name: "index_guides_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "group_automation_for_users", "group_automations"
  add_foreign_key "group_automation_for_users", "users"
  add_foreign_key "group_automations", "groups"
  add_foreign_key "group_automations", "guides"
  add_foreign_key "groups_users", "groups"
  add_foreign_key "groups_users", "users"
  add_foreign_key "guides_users", "group_automations"
  add_foreign_key "guides_users", "guides"
  add_foreign_key "guides_users", "users"
end
