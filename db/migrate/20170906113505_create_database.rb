class CreateDatabase < ActiveRecord::Migration
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
    t.decimal  "drugMg"
    t.decimal  "drugMl"
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
