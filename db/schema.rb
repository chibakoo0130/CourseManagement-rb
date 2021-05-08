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

ActiveRecord::Schema.define(version: 2021_05_04_131642) do

  create_table "courses", primary_key: "course_no", id: :string, limit: 4, force: :cascade do |t|
    t.string "course_name", limit: 40, null: false
    t.date "the_date", null: false
    t.string "start_time", limit: 5, null: false
    t.string "end_time", limit: 5, null: false
    t.integer "capacity", default: 10, null: false
    t.date "inp_date", null: false
    t.datetime "upd_date", null: false
  end

end
