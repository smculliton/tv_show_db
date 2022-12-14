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

ActiveRecord::Schema.define(version: 2022_12_12_032415) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "follows", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followee_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "name"
    t.string "genre1"
    t.string "genre2"
    t.string "genre3"
    t.float "rating"
    t.boolean "still_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "premiered"
    t.datetime "ended"
    t.string "summary"
  end

  create_table "user_shows", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "show_id"
    t.index ["show_id"], name: "index_user_shows_on_show_id"
    t.index ["user_id"], name: "index_user_shows_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

  add_foreign_key "user_shows", "shows"
  add_foreign_key "user_shows", "users"
end
