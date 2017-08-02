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

ActiveRecord::Schema.define(version: 20170802142224) do

  create_table "assignments", force: :cascade do |t|
    t.integer  "zombie_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_assignments_on_role_id"
    t.index ["zombie_id"], name: "index_assignments_on_zombie_id"
  end

  create_table "brains", force: :cascade do |t|
    t.integer  "zombie_id"
    t.string   "status"
    t.string   "flavor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["zombie_id"], name: "index_brains_on_zombie_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zombies", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.integer  "age"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "email"
    t.boolean  "rotting",    default: true
  end

end
