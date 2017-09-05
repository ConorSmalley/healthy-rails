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

ActiveRecord::Schema.define(version: 20170905143045) do

  create_table "blood_groups", force: :cascade do |t|
    t.string   "bloodgroup"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blood_pressures", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "systolic"
    t.integer  "diastolic"
    t.datetime "dt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contains", force: :cascade do |t|
    t.integer  "medication_id"
    t.integer  "drug_id"
    t.integer  "dose"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "doses", force: :cascade do |t|
    t.integer  "medication_id"
    t.integer  "drug_id"
    t.integer  "dose"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "drug_administrations", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "medication_id"
    t.datetime "dt"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.decimal  "quantity"
  end

  create_table "drugs", force: :cascade do |t|
    t.string   "drug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medication_drugs", force: :cascade do |t|
    t.integer  "medication_id"
    t.integer  "drug_id"
    t.integer  "drugMg"
    t.integer  "drugMl"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "medications", force: :cascade do |t|
    t.string   "medication"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "format"
  end

  create_table "patients", force: :cascade do |t|
    t.string   "firstName"
    t.string   "surname"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "bloodgroup_id"
    t.string   "title"
    t.string   "gender"
  end

  create_table "pulses", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "pulse"
    t.datetime "dt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "temperatures", force: :cascade do |t|
    t.integer  "patient_id"
    t.decimal  "temperature"
    t.datetime "dt"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
