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

ActiveRecord::Schema.define(version: 20140113174538) do

  create_table "caso", force: true do |t|
    t.string   "titulo",     limit: 50
    t.date     "fecha",                 null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caso_presponsable", id: false, force: true do |t|
    t.integer  "id_caso", null: false
    t.integer  "id_presponsable", null: false
    t.string   "otro",            limit: 500
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "caso_presponsable", ["id_caso", "id_presponsable"], name: "index_caso_presponsable_on_caso_id_and_presponsable_id", unique: true
  add_index "caso_presponsable", ["id_presponsable", "id_caso"], name: "index_caso_presponsable_on_presponsable_id_and_caso_id", unique: true

  create_table "presponsable", force: true do |t|
    t.string   "nombre",     limit: 500, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
