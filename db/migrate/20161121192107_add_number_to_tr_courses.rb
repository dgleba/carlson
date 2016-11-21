class AddNumberToTrCourses < ActiveRecord::Migration
  def change
    add_column :tr_courses, :number, :string
  end
end
