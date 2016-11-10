class CreateTrCourses < ActiveRecord::Migration
  def change
    create_table :tr_courses do |t|
      t.string :name
      t.string :category
      t.string :description

      t.timestamps null: false
    end
  end
end
