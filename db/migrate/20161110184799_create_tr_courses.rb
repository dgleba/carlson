class CreateTrCourses < ActiveRecord::Migration
  def change
    create_table :tr_courses do |t|
      t.string :name
      t.string :category
      t.string :description
      t.integer :active_status, :default => 1
      t.integer :sort, :default => 51

      t.timestamps null: false
    end
  end
end
