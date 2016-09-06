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

ActiveRecord::Schema.define(version: 20160901073149) do

  create_table "displays", force: :cascade do |t|
    t.decimal  "Price",                          precision: 10
    t.string   "name",               limit: 255
    t.string   "resolution",         limit: 255
    t.string   "brand",              limit: 255
    t.string   "aspect_ratio",       limit: 255
    t.decimal  "size",                           precision: 10
    t.string   "ports",              limit: 255
    t.decimal  "response_time",                  precision: 10
    t.decimal  "refresh_rate",                   precision: 10
    t.boolean  "speakers"
    t.string   "dimensions",         limit: 255
    t.string   "panel",              limit: 255
    t.date     "release"
    t.string   "stand_misc",         limit: 255
    t.string   "gpu_sync",           limit: 255
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

end
