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

ActiveRecord::Schema.define(version: 20170110072901) do

  create_table "cookers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "cooker_name"
    t.string   "cooker_email_address"
    t.string   "cooker_home_address"
    t.string   "cooker_phone_number"
    t.string   "cooker_other_phone_number"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "menus", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "cooker_id"
    t.string   "menu_title"
    t.string   "menu_descriptions"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["cooker_id"], name: "index_menus_on_cooker_id", using: :btree
  end

end
