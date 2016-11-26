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

ActiveRecord::Schema.define(version: 20161125165024) do

  create_table "about_incidents_reader", force: :cascade do |t|
    t.text "info", limit: 65535, null: false
  end

  create_table "about_incidents_reader__history", primary_key: "history__id", force: :cascade do |t|
    t.string   "history__language", limit: 2
    t.text     "history__comments", limit: 65535
    t.string   "history__user",     limit: 32
    t.integer  "history__state",    limit: 4,     default: 0
    t.datetime "history__modified"
    t.integer  "id",                limit: 4
    t.integer  "info",              limit: 4
  end

  add_index "about_incidents_reader__history", ["history__modified"], name: "datekeys", using: :btree
  add_index "about_incidents_reader__history", ["id"], name: "prikeys", using: :btree

  create_table "asset_eam", id: false, force: :cascade do |t|
    t.integer "id",                              limit: 4,   default: 0, null: false
    t.string  "Asset",                           limit: 150
    t.string  "Description",                     limit: 150
    t.string  "Location",                        limit: 150
    t.string  "Manufacturer",                    limit: 150
    t.string  "Model",                           limit: 150
    t.string  "Serial Number",                   limit: 150
    t.string  "Supplier",                        limit: 150
    t.string  "Category",                        limit: 150
    t.string  "Cell",                            limit: 150
    t.string  "Change Notice",                   limit: 150
    t.string  "Class",                           limit: 150
    t.date    "Commission Date"
    t.string  "Contract Equipment",              limit: 150
    t.string  "Criticality",                     limit: 150
    t.string  "Currency",                        limit: 150
    t.string  "Customer",                        limit: 150
    t.string  "Department",                      limit: 150
    t.string  "Dependent",                       limit: 150
    t.string  "Dormant End",                     limit: 150
    t.string  "Dormant Start",                   limit: 150
    t.string  "Eligible for Energy Star Label",  limit: 150
    t.date    "Latest Install Date"
    t.string  "Latest Receipt Date",             limit: 150
    t.string  "Lock Reliability Ranking Values", limit: 150
    t.string  "Organization",                    limit: 150
    t.string  "Original Install Date",           limit: 150
    t.string  "Original Receipt Date",           limit: 150
    t.string  "Out of Service",                  limit: 150
    t.string  "PO# / IPP#",                      limit: 150
    t.string  "Parent Asset",                    limit: 150
    t.string  "Prevent non-PM WO Completion",    limit: 150
    t.string  "Primary Use",                     limit: 150
  end

  create_table "audits", force: :cascade do |t|
    t.integer  "auditable_id",    limit: 4
    t.string   "auditable_type",  limit: 255
    t.integer  "associated_id",   limit: 4
    t.string   "associated_type", limit: 255
    t.integer  "user_id",         limit: 4
    t.string   "user_type",       limit: 255
    t.string   "action",          limit: 255
    t.text     "audited_changes", limit: 65535
    t.integer  "version",         limit: 4,     default: 0
    t.string   "comment",         limit: 255
    t.string   "remote_address",  limit: 255
    t.string   "request_uuid",    limit: 255
    t.datetime "created_at"
    t.string   "username",        limit: 255
  end

  add_index "audits", ["associated_id", "associated_type"], name: "associated_index", using: :btree
  add_index "audits", ["auditable_id", "auditable_type"], name: "auditable_index", using: :btree
  add_index "audits", ["created_at"], name: "index_audits_on_created_at", using: :btree
  add_index "audits", ["request_uuid"], name: "index_audits_on_request_uuid", using: :btree
  add_index "audits", ["user_id", "user_type"], name: "user_index", using: :btree

  create_table "copy_employees", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "clock",      limit: 255
    t.string   "sort",       limit: 255
    t.boolean  "active",                 default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "copy_employees", ["clock", "name"], name: "index_employees_on_clock_and_name", unique: true, using: :btree

  create_table "copy_stf_employees", force: :cascade do |t|
    t.string   "clocknum",      limit: 255
    t.string   "name",          limit: 255
    t.integer  "active_status", limit: 4
    t.integer  "sort",          limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "corrective_actions", force: :cascade do |t|
    t.text     "name",             limit: 65535
    t.string   "responsible",      limit: 255
    t.date     "target_date"
    t.date     "actual_date_done"
    t.boolean  "done"
    t.string   "sort_integer",     limit: 255
    t.string   "priority",         limit: 255
    t.integer  "incident_id",      limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "corrective_actions", ["incident_id"], name: "index_corrective_actions_on_incident_id", using: :btree

  create_table "dataface__failed_logins", primary_key: "attempt_id", force: :cascade do |t|
    t.string  "ip_address",      limit: 32, null: false
    t.string  "username",        limit: 32, null: false
    t.integer "time_of_attempt", limit: 4,  null: false
  end

  create_table "dataface__modules", primary_key: "module_name", force: :cascade do |t|
    t.integer "module_version", limit: 4
  end

  create_table "dataface__mtimes", primary_key: "name", force: :cascade do |t|
    t.integer "mtime", limit: 4
  end

  create_table "dataface__preferences", primary_key: "pref_id", force: :cascade do |t|
    t.string "username",  limit: 64,  null: false
    t.string "table",     limit: 128, null: false
    t.string "record_id", limit: 255, null: false
    t.string "key",       limit: 128, null: false
    t.string "value",     limit: 255, null: false
  end

  add_index "dataface__preferences", ["record_id"], name: "record_id", using: :btree
  add_index "dataface__preferences", ["table"], name: "table", using: :btree
  add_index "dataface__preferences", ["username"], name: "username", using: :btree

  create_table "dataface__record_mtimes", primary_key: "recordhash", force: :cascade do |t|
    t.string  "recordid", limit: 255, null: false
    t.integer "mtime",    limit: 4,   null: false
  end

  create_table "dataface__version", id: false, force: :cascade do |t|
    t.integer "version", limit: 4, default: 0, null: false
  end

  create_table "emp_enterprise", id: false, force: :cascade do |t|
    t.string   "clock",       limit: 7
    t.string   "name",        limit: 62
    t.string   "dept",        limit: 19
    t.string   "company",     limit: 69
    t.string   "group",       limit: 59
    t.string   "status",      limit: 12
    t.string   "sch_wk1",     limit: 17
    t.string   "pln_wk1",     limit: 17
    t.string   "sch_wk2",     limit: 17
    t.string   "pln_wk2",     limit: 17
    t.integer  "id_e",        limit: 4,  default: 0, null: false
    t.datetime "updatedtime",                        null: false
    t.datetime "createdtime",                        null: false
  end

  create_table "emp_enterprise_ceridian", id: false, force: :cascade do |t|
    t.string  "clock",              limit: 7
    t.string  "name",               limit: 62
    t.string  "dept",               limit: 19
    t.string  "company",            limit: 69
    t.string  "group",              limit: 59
    t.string  "status",             limit: 12
    t.string  "sch_wk1",            limit: 17
    t.string  "pln_wk1",            limit: 17
    t.string  "sch_wk2",            limit: 17
    t.string  "pln_wk2",            limit: 17
    t.integer "id_e",               limit: 4,  default: 0, null: false
    t.string  "cer_eenum",          limit: 7
    t.string  "cer_position",       limit: 99
    t.string  "cer_dept",           limit: 44
    t.string  "cer_name",           limit: 99
    t.string  "cer_sh",             limit: 14
    t.date    "cer_datehired"
    t.date    "cer_seniority_date"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "clock",      limit: 255
    t.string   "sort",       limit: 255
    t.boolean  "active",                 default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "employees", ["clock", "name"], name: "index_employees_on_clock_and_name", unique: true, using: :btree

  create_table "inci_assets", force: :cascade do |t|
    t.string   "asset",       limit: 255
    t.string   "description", limit: 255
    t.integer  "sort",        limit: 4
    t.integer  "active",      limit: 4,   default: 1
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "inci_assets", ["asset", "description"], name: "index_assets_on_asset_and_description", unique: true, using: :btree
  add_index "inci_assets", ["asset", "description"], name: "index_inci_assets_on_asset_and_description", unique: true, using: :btree

  create_table "incidents", force: :cascade do |t|
    t.string   "report_type",                             limit: 987
    t.integer  "employee_id",                             limit: 4
    t.string   "name_if_not_in_employees",                limit: 255
    t.string   "contractor_or_visitor",                   limit: 255
    t.string   "reported_to",                             limit: 255
    t.datetime "reported_at"
    t.datetime "incident_occured"
    t.string   "left_right",                              limit: 255
    t.boolean  "dominant"
    t.string   "injured_body_part",                       limit: 255
    t.string   "incident_type",                           limit: 987
    t.string   "other_exposure",                          limit: 255
    t.integer  "inci_asset_id",                           limit: 4
    t.string   "incident_location",                       limit: 255
    t.string   "witness1",                                limit: 255
    t.string   "witness2",                                limit: 255
    t.string   "task_being_done",                         limit: 255
    t.boolean  "routine_task"
    t.text     "description_of_incident",                 limit: 65535
    t.string   "treatment",                               limit: 987
    t.text     "description_first_aid",                   limit: 65535
    t.text     "immediate_cause",                         limit: 65535
    t.text     "basic_root_cause",                        limit: 65535
    t.text     "previous_occurrence",                     limit: 65535
    t.string   "working_environment",                     limit: 987
    t.text     "work_environment_details",                limit: 65535
    t.string   "machine_equipment",                       limit: 987
    t.text     "machine_equipment_details",               limit: 65535
    t.text     "addtional_comments",                      limit: 65535
    t.integer  "corrective_action_id",                    limit: 4
    t.string   "corrective_actions_implemented_checkbox", limit: 255
    t.text     "corrective_actions_implemented",          limit: 65535
    t.string   "corrective_actions_effective_checkbox",   limit: 255
    t.text     "corrective_actions_effective",            limit: 65535
    t.text     "other_corrective_comments",               limit: 65535
    t.string   "supervisor",                              limit: 255
    t.date     "supervisor_date"
    t.string   "operations_manager",                      limit: 255
    t.date     "operations_manager_date"
    t.string   "hse_coordinator",                         limit: 255
    t.date     "hse_coordinator_date"
    t.integer  "user_id",                                 limit: 4
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.string   "hr_manager",                              limit: 255
    t.string   "status",                                  limit: 255
    t.string   "ohsa_reportable",                         limit: 255
    t.float    "length_of_service",                       limit: 24
    t.string   "plant",                                   limit: 255
    t.date     "return_to_work_date"
  end

  add_index "incidents", ["corrective_action_id"], name: "index_incidents_on_corrective_action_id", using: :btree
  add_index "incidents", ["employee_id"], name: "index_incidents_on_employee_id", using: :btree
  add_index "incidents", ["inci_asset_id"], name: "index_incidents_on_inci_asset_id", using: :btree
  add_index "incidents", ["user_id"], name: "index_incidents_on_user_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
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
    t.string   "name",          limit: 255,             null: false
    t.string   "operation",     limit: 255,             null: false
    t.integer  "operationid",   limit: 4,               null: false
    t.integer  "active_status", limit: 4,   default: 1
    t.integer  "sort",          limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "tr_cells", ["name", "operation", "operationid"], name: "name_operation_operationid", unique: true, using: :btree

  create_table "tr_courses", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "number",        limit: 255
    t.string   "category",      limit: 255
    t.string   "description",   limit: 255
    t.integer  "active_status", limit: 4,   default: 1,  null: false
    t.integer  "sort",          limit: 4,   default: 51
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
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

  add_index "tr_customers", ["name", "location", "customerid"], name: "name_location_customerid", unique: true, using: :btree

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

  create_table "tr_training_employees", force: :cascade do |t|
    t.text     "output",                limit: 65535
    t.integer  "tr_training_record_id", limit: 4
    t.integer  "stf_employee_id",       limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "tr_training_employees", ["stf_employee_id"], name: "index_tr_training_employees_on_stf_employee_id", using: :btree
  add_index "tr_training_employees", ["tr_training_record_id"], name: "index_tr_training_employees_on_tr_training_record_id", using: :btree

  create_table "tr_training_records", force: :cascade do |t|
    t.integer  "tr_course_id",              limit: 4
    t.date     "training_date"
    t.text     "details_of_training",       limit: 65535
    t.float    "hours_trained",             limit: 24
    t.string   "location",                  limit: 255
    t.string   "swi",                       limit: 255
    t.string   "path_to_training_material", limit: 255
    t.integer  "tr_type_id",                limit: 4
    t.integer  "tr_customer_id",            limit: 4
    t.integer  "tr_program_id",             limit: 4
    t.integer  "tr_part_id",                limit: 4
    t.integer  "tr_cell_id",                limit: 4
    t.integer  "stf_asset_id",              limit: 4
    t.integer  "user_id",                   limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "plant",                     limit: 255
    t.string   "trainer",                   limit: 255
  end

  add_index "tr_training_records", ["stf_asset_id"], name: "index_tr_training_records_on_stf_asset_id", using: :btree
  add_index "tr_training_records", ["tr_cell_id"], name: "index_tr_training_records_on_tr_cell_id", using: :btree
  add_index "tr_training_records", ["tr_course_id"], name: "index_tr_training_records_on_tr_course_id", using: :btree
  add_index "tr_training_records", ["tr_customer_id"], name: "index_tr_training_records_on_tr_customer_id", using: :btree
  add_index "tr_training_records", ["tr_part_id"], name: "index_tr_training_records_on_tr_part_id", using: :btree
  add_index "tr_training_records", ["tr_program_id"], name: "index_tr_training_records_on_tr_program_id", using: :btree
  add_index "tr_training_records", ["tr_type_id"], name: "index_tr_training_records_on_tr_type_id", using: :btree
  add_index "tr_training_records", ["user_id"], name: "index_tr_training_records_on_user_id", using: :btree

  create_table "tr_types", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "active_status", limit: 4,   default: 1, null: false
    t.integer  "sort",          limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "tr_types", ["name"], name: "name", unique: true, using: :btree

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

  create_table "users_xataface", primary_key: "username", force: :cascade do |t|
    t.string   "password",     limit: 244,                     null: false
    t.string   "Role",         limit: 9,     default: "ADDER"
    t.string   "first_name",   limit: 233
    t.string   "last_name",    limit: 233
    t.string   "address",      limit: 244
    t.string   "phone_num",    limit: 211
    t.string   "email",        limit: 234,                     null: false
    t.text     "comment_fld1", limit: 65535
    t.datetime "createdtime"
    t.datetime "updatedtime"
  end

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

  add_foreign_key "corrective_actions", "incidents"
  add_foreign_key "incidents", "corrective_actions"
  add_foreign_key "incidents", "employees"
  add_foreign_key "incidents", "inci_assets"
  add_foreign_key "incidents", "users"
  add_foreign_key "tr_training_employees", "stf_employees"
  add_foreign_key "tr_training_employees", "tr_training_records"
  add_foreign_key "tr_training_records", "stf_assets"
  add_foreign_key "tr_training_records", "tr_cells"
  add_foreign_key "tr_training_records", "tr_courses"
  add_foreign_key "tr_training_records", "tr_customers"
  add_foreign_key "tr_training_records", "tr_parts"
  add_foreign_key "tr_training_records", "tr_programs"
  add_foreign_key "tr_training_records", "tr_types"
  add_foreign_key "tr_training_records", "users"
  add_foreign_key "users", "roles"
end
