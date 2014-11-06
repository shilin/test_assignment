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

ActiveRecord::Schema.define(version: 20141104155632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "records", force: true do |t|
    t.integer  "acell"
    t.integer  "bcell"
    t.integer  "ccell"
    t.integer  "dcell"
    t.integer  "ecell",      limit: 8
    t.integer  "fcell",      limit: 8
    t.integer  "gcell"
    t.integer  "hcell"
    t.text     "icell"
    t.text     "jcell"
    t.decimal  "kcell",                precision: 10, scale: 2
    t.integer  "lcell"
    t.integer  "mcell"
    t.decimal  "ncell",                precision: 10, scale: 2
    t.integer  "ocell"
    t.integer  "pcell"
    t.decimal  "qcell",                precision: 10, scale: 2
    t.decimal  "rcell",                precision: 10, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
