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

ActiveRecord::Schema.define(version: 20170218231457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "parent_category_id"
    t.index ["parent_category_id"], name: "index_categories_on_parent_category_id", using: :btree
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.text     "icon"
    t.boolean  "protected",  default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "admin_id",                   null: false
    t.index ["admin_id"], name: "index_groups_on_admin_id", using: :btree
  end

  create_table "groups_users", id: false, force: :cascade do |t|
    t.integer "group_id"
    t.integer "user_id"
    t.boolean "accepted", default: false
    t.index ["group_id"], name: "index_groups_users_on_group_id", using: :btree
    t.index ["user_id"], name: "index_groups_users_on_user_id", using: :btree
  end

  create_table "meals", force: :cascade do |t|
    t.string   "name"
    t.text     "image"
    t.decimal  "price_person"
    t.datetime "date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.integer  "category_id"
    t.index ["category_id"], name: "index_meals_on_category_id", using: :btree
    t.index ["user_id"], name: "index_meals_on_user_id", using: :btree
  end

  create_table "meals_tags", id: false, force: :cascade do |t|
    t.integer "meal_id"
    t.integer "tag_id"
    t.index ["meal_id"], name: "index_meals_tags_on_meal_id", using: :btree
    t.index ["tag_id"], name: "index_meals_tags_on_tag_id", using: :btree
  end

  create_table "notification_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.datetime "date",        null: false
    t.text     "message"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "type_id"
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.index ["receiver_id"], name: "index_notifications_on_receiver_id", using: :btree
    t.index ["sender_id"], name: "index_notifications_on_sender_id", using: :btree
    t.index ["type_id"], name: "index_notifications_on_type_id", using: :btree
  end

  create_table "order_requests", force: :cascade do |t|
    t.integer  "quantity"
    t.boolean  "payment",        default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "user_id"
    t.integer  "status_id"
    t.integer  "publication_id"
    t.integer  "meal_id"
    t.integer  "rating_id"
    t.index ["meal_id"], name: "index_order_requests_on_meal_id", using: :btree
    t.index ["publication_id"], name: "index_order_requests_on_publication_id", using: :btree
    t.index ["rating_id"], name: "index_order_requests_on_rating_id", using: :btree
    t.index ["status_id"], name: "index_order_requests_on_status_id", using: :btree
    t.index ["user_id"], name: "index_order_requests_on_user_id", using: :btree
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publications", force: :cascade do |t|
    t.datetime "date"
    t.datetime "setDate"
    t.datetime "deadline"
    t.text     "meetingPoint"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.integer  "meal_id"
    t.index ["meal_id"], name: "index_publications_on_meal_id", using: :btree
    t.index ["user_id"], name: "index_publications_on_user_id", using: :btree
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "evaluation"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.integer  "order_request_id"
    t.index ["order_request_id"], name: "index_ratings_on_order_request_id", using: :btree
    t.index ["user_id"], name: "index_ratings_on_user_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "first_name"
    t.string   "last_name"
    t.text     "photo"
  end

end
