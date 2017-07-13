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
    t.integer  "auditable_id",    limit: 4
    t.string   "auditable_type",  limit: 255
    t.integer  "associated_id",   limit: 4
    t.string   "associated_type", limit: 255
    t.integer  "user_id",         limit: 4
    t.string   "user_type",       limit: 255
    t.string   "username",        limit: 255
    t.string   "action",          limit: 255
    t.text     "audited_changes", limit: 65535
    t.integer  "version",         limit: 4,     default: 0
    t.string   "comment",         limit: 255
    t.string   "remote_address",  limit: 255
    t.string   "request_uuid",    limit: 255
    t.datetime "created_at"
  end

  add_index "audits", ["associated_id", "associated_type"], name: "associated_index", using: :btree
  add_index "audits", ["auditable_id", "auditable_type"], name: "auditable_index", using: :btree
  add_index "audits", ["created_at"], name: "index_audits_on_created_at", using: :btree
  add_index "audits", ["request_uuid"], name: "index_audits_on_request_uuid", using: :btree
  add_index "audits", ["user_id", "user_type"], name: "user_index", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "search_1", id: false, force: :cascade do |t|
    t.string  "clocknum",           limit: 255
    t.string  "employee",           limit: 255
    t.date    "training_date"
    t.string  "course_name",        limit: 255
    t.integer "id",                 limit: 4,   default: 0, null: false
    t.integer "training_record_id", limit: 4
  end

  create_table "stf_assets", force: :cascade do |t|
    t.string   "assetnum",      limit: 255
    t.string   "description",   limit: 255
    t.integer  "active_status", limit: 4,   default: 1
    t.integer  "sort",          limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "stf_assets", ["assetnum", "description"], name: "index_stf_assets_on_assetnum_and_description", unique: true, using: :btree

  create_table "stf_employees", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "clocknum",      limit: 255
    t.integer  "active_status", limit: 4,   default: 1
    t.integer  "sort",          limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "stf_employees", ["clocknum", "name"], name: "index_stf_employees_on_clocknum_and_name", unique: true, using: :btree

  create_table "tr_cells", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "operation",     limit: 255
    t.string   "operationid",   limit: 255
    t.integer  "active_status", limit: 4
    t.integer  "sort",          limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "tr_cells", ["name", "operation", "operationid"], name: "index_tr_cells_on_name_and_operation_and_operationid", unique: true, using: :btree

  create_table "tr_courses", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "category",      limit: 255
    t.string   "description",   limit: 255
    t.integer  "active_status", limit: 4,   default: 1
    t.integer  "sort",          limit: 4,   default: 51
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "number",        limit: 255
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
    t.string   "name",          limit: 255
    t.string   "partnumber",    limit: 255
    t.integer  "active_status", limit: 4,   default: 1
    t.integer  "sort",          limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "tr_parts", ["name", "partnumber"], name: "index_tr_parts_on_name_and_partnumber", unique: true, using: :btree

  create_table "tr_programs", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "active_status", limit: 4
    t.integer  "sort",          limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "tr_secondary_course_names", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "active_status", limit: 4
    t.integer  "sort",          limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "tr_training_employees", force: :cascade do |t|
    t.string   "name",                  limit: 255
    t.string   "description",           limit: 255
    t.text     "output",                limit: 65535
    t.integer  "tr_training_record_id", limit: 4
    t.integer  "stf_employee_id",       limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "status",                limit: 4
    t.string   "ohsa_reportable",       limit: 255
    t.float    "length_of_service",     limit: 24
  end

  add_index "tr_training_employees", ["stf_employee_id"], name: "index_tr_training_employees_on_stf_employee_id", using: :btree
  add_index "tr_training_employees", ["tr_training_record_id"], name: "index_tr_training_employees_on_tr_training_record_id", using: :btree

  create_table "tr_training_records", force: :cascade do |t|
    t.integer  "tr_course_id",                limit: 4
    t.date     "training_date"
    t.text     "details_of_training",         limit: 65535
    t.float    "hours_trained",               limit: 24
    t.string   "location",                    limit: 255
    t.string   "swi",                         limit: 255
    t.string   "path_to_training_material",   limit: 255
    t.integer  "tr_type_id",                  limit: 4
    t.integer  "tr_customer_id",              limit: 4
    t.integer  "tr_program_id",               limit: 4
    t.integer  "tr_part_id",                  limit: 4
    t.integer  "tr_cell_id",                  limit: 4
    t.integer  "stf_asset_id",                limit: 4
    t.integer  "user_id",                     limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "plant",                       limit: 255
    t.string   "trainer",                     limit: 255
    t.integer  "tr_secondary_course_name_id", limit: 4
    t.string   "title",                       limit: 255
  end

  add_index "tr_training_records", ["stf_asset_id"], name: "index_tr_training_records_on_stf_asset_id", using: :btree
  add_index "tr_training_records", ["tr_cell_id"], name: "index_tr_training_records_on_tr_cell_id", using: :btree
  add_index "tr_training_records", ["tr_course_id"], name: "index_tr_training_records_on_tr_course_id", using: :btree
  add_index "tr_training_records", ["tr_customer_id"], name: "index_tr_training_records_on_tr_customer_id", using: :btree
  add_index "tr_training_records", ["tr_part_id"], name: "index_tr_training_records_on_tr_part_id", using: :btree
  add_index "tr_training_records", ["tr_program_id"], name: "index_tr_training_records_on_tr_program_id", using: :btree
  add_index "tr_training_records", ["tr_secondary_course_name_id"], name: "index_tr_training_records_on_tr_secondary_course_name_id", using: :btree
  add_index "tr_training_records", ["tr_type_id"], name: "index_tr_training_records_on_tr_type_id", using: :btree
  add_index "tr_training_records", ["user_id"], name: "index_tr_training_records_on_user_id", using: :btree

  create_table "tr_types", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "active_status", limit: 4
    t.integer  "sort",          limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "email",                  limit: 255
    t.string   "crypted_password",       limit: 255
    t.string   "salt",                   limit: 255
    t.integer  "role_id",                limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0,  null: false
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

  create_table "version_associations", force: :cascade do |t|
    t.integer "version_id",       limit: 4
    t.string  "foreign_key_name", limit: 255, null: false
    t.integer "foreign_key_id",   limit: 4
  end

  add_index "version_associations", ["foreign_key_name", "foreign_key_id"], name: "index_version_associations_on_foreign_key", using: :btree
  add_index "version_associations", ["version_id"], name: "index_version_associations_on_version_id", using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",      limit: 191,        null: false
    t.integer  "item_id",        limit: 4,          null: false
    t.string   "event",          limit: 255,        null: false
    t.string   "whodunnit",      limit: 255
    t.text     "object",         limit: 4294967295
    t.datetime "created_at"
    t.text     "object_changes", limit: 4294967295
    t.integer  "transaction_id", limit: 4
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree
  add_index "versions", ["transaction_id"], name: "index_versions_on_transaction_id", using: :btree

  add_foreign_key "tr_training_employees", "stf_employees"
  add_foreign_key "tr_training_employees", "tr_training_records"
  add_foreign_key "tr_training_records", "stf_assets"
  add_foreign_key "tr_training_records", "tr_cells"
  add_foreign_key "tr_training_records", "tr_courses"
  add_foreign_key "tr_training_records", "tr_customers"
  add_foreign_key "tr_training_records", "tr_parts"
  add_foreign_key "tr_training_records", "tr_programs"
  add_foreign_key "tr_training_records", "tr_secondary_course_names"
  add_foreign_key "tr_training_records", "tr_types"
  add_foreign_key "tr_training_records", "users"
  add_foreign_key "users", "roles"
end
