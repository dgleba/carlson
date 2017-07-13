class CreateTrCustomers < ActiveRecord::Migration
  # def change
    # create_table :tr_customers do |t|
      # t.string :name
      # t.integer :active_status
      # t.integer :sort

      # t.timestamps null: false
    # end
  # end

  # http://www.theirishpenguin.com/2009/11/26/generate-rails-migrations-from-your-postgresql-or-mysql-database.html
  
  create_table "tr_customers", force: :cascade do |t|
    t.string   "name",          limit: 255,             null: false
    t.string   "location",      limit: 255,             null: false
    t.integer  "customerid",    limit: 4,               null: false
    t.integer  "active_status", limit: 4,   default: 1
    t.integer  "sort",          limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

end


