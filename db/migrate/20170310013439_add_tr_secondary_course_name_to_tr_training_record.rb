class AddTrSecondaryCourseNameToTrTrainingRecord < ActiveRecord::Migration
  def change
    add_reference :tr_training_records, :tr_secondary_course_name, index: true, foreign_key: true
  end
end
