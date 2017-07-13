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

ActiveRecord::Schema.define(version: 20170310021417) do

  create_table "audits", force: :cascade do |t|
    t.integer  "auditable_id"
    t.string   "auditable_type"
    t.integer  "associated_id"
    t.string   "associated_type"
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "username"
    t.string   "action"
    t.text     "audited_changes"
    t.integer  "version",         default: 0
    t.string   "comment"
    t.string   "remote_address"
    t.string   "request_uuid"
    t.datetime "created_at"
  end

  add_index "audits", ["associated_id", "associated_type"], name: "associated_index"
  add_index "audits", ["auditable_id", "auditable_type"], name: "auditable_index"
  add_index "audits", ["created_at"], name: "index_audits_on_created_at"
  add_index "audits", ["request_uuid"], name: "index_audits_on_request_uuid"
  add_index "audits", ["user_id", "user_type"], name: "user_index"

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "search_1", id: false, force: :cascade do |t|
    t.string  "clocknum"
    t.string  "employee"
    t.date    "training_date"
    t.string  "course_name"
    t.integer "id"
    t.integer "training_record_id"
  end

  create_table "stf_assets", force: :cascade do |t|
    t.string   "assetnum"
    t.string   "description"
    t.integer  "active_status", default: 1
    t.integer  "sort"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "stf_assets", ["assetnum", "description"], name: "index_stf_assets_on_assetnum_and_description", unique: true

  create_table "stf_employees", force: :cascade do |t|
    t.string   "name"
    t.string   "clocknum"
    t.integer  "active_status", default: 1
    t.integer  "sort"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "stf_employees", ["clocknum", "name"], name: "index_stf_employees_on_clocknum_and_name", unique: true

  create_table "tr_cells", force: :cascade do |t|
    t.string   "name"
    t.string   "operation"
    t.string   "operationid"
    t.integer  "active_status"
    t.integer  "sort"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "tr_cells", ["name", "operation", "operationid"], name: "index_tr_cells_on_name_and_operation_and_operationid", unique: true

  create_table "tr_courses", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.string   "description"
    t.integer  "active_status", default: 1
    t.integer  "sort",          default: 51
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "number"
  end

  create_table "tr_customers", force: :cascade do |t|
    t.string   "name",          limit: 255,             null: false
    t.string   "location",      limit: 255,             null: false
    t.integer  "customerid",    limit: 4,               null: false
    t.integer  "active_status", limit: 4,   default: 1
    t.integer  "sort",          limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "tr_parts", force: :cascade do |t|
    t.string   "name"
    t.string   "partnumber"
    t.integer  "active_status", default: 1
    t.integer  "sort"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "tr_parts", ["name", "partnumber"], name: "index_tr_parts_on_name_and_partnumber", unique: true

  create_table "tr_programs", force: :cascade do |t|
    t.string   "name"
    t.integer  "active_status"
    t.integer  "sort"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tr_secondary_course_names", force: :cascade do |t|
    t.string   "name"
    t.integer  "active_status"
    t.integer  "sort"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tr_training_employees", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.text     "output"
    t.integer  "tr_training_record_id"
    t.integer  "stf_employee_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "status"
    t.string   "ohsa_reportable"
    t.float    "length_of_service"
  end

  add_index "tr_training_employees", ["stf_employee_id"], name: "index_tr_training_employees_on_stf_employee_id"
  add_index "tr_training_employees", ["tr_training_record_id"], name: "index_tr_training_employees_on_tr_training_record_id"

  create_table "tr_training_records", force: :cascade do |t|
    t.integer  "tr_course_id"
    t.date     "training_date"
    t.text     "details_of_training"
    t.float    "hours_trained"
    t.string   "location"
    t.string   "swi"
    t.string   "path_to_training_material"
    t.integer  "tr_type_id"
    t.integer  "tr_customer_id"
    t.integer  "tr_program_id"
    t.integer  "tr_part_id"
    t.integer  "tr_cell_id"
    t.integer  "stf_asset_id"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "plant"
    t.string   "trainer"
    t.integer  "tr_secondary_course_name_id"
    t.string   "title"
  end

  add_index "tr_training_records", ["stf_asset_id"], name: "index_tr_training_records_on_stf_asset_id"
  add_index "tr_training_records", ["tr_cell_id"], name: "index_tr_training_records_on_tr_cell_id"
  add_index "tr_training_records", ["tr_course_id"], name: "index_tr_training_records_on_tr_course_id"
  add_index "tr_training_records", ["tr_customer_id"], name: "index_tr_training_records_on_tr_customer_id"
  add_index "tr_training_records", ["tr_part_id"], name: "index_tr_training_records_on_tr_part_id"
  add_index "tr_training_records", ["tr_program_id"], name: "index_tr_training_records_on_tr_program_id"
  add_index "tr_training_records", ["tr_secondary_course_name_id"], name: "index_tr_training_records_on_tr_secondary_course_name_id"
  add_index "tr_training_records", ["tr_type_id"], name: "index_tr_training_records_on_tr_type_id"
  add_index "tr_training_records", ["user_id"], name: "index_tr_training_records_on_user_id"

  create_table "tr_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "active_status"
    t.integer  "sort"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.integer  "role_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["role_id"], name: "index_users_on_role_id"
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true

  create_table "version_associations", force: :cascade do |t|
    t.integer "version_id"
    t.string  "foreign_key_name", null: false
    t.integer "foreign_key_id"
  end

  add_index "version_associations", ["foreign_key_name", "foreign_key_id"], name: "index_version_associations_on_foreign_key"
  add_index "version_associations", ["version_id"], name: "index_version_associations_on_version_id"

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",                         null: false
    t.integer  "item_id",                           null: false
    t.string   "event",                             null: false
    t.string   "whodunnit"
    t.text     "object",         limit: 1073741823
    t.datetime "created_at"
    t.text     "object_changes", limit: 1073741823
    t.integer  "transaction_id"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  add_index "versions", ["transaction_id"], name: "index_versions_on_transaction_id"

end
