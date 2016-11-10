class CreateStfEmployees < ActiveRecord::Migration
  def change
    create_table :stf_employees do |t|
      t.string :clocknum
      t.string :name
      t.integer :active_status
      t.integer :sort

      t.timestamps null: false
    end
  end
end
