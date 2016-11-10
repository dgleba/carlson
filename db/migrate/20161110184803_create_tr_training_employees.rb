class CreateTrTrainingEmployees < ActiveRecord::Migration
  def change
    create_table :tr_training_employees do |t|
      t.string :name
      t.string :description
      t.text :output
      t.references :tr_training_record, index: true, foreign_key: true
      t.references :stf_employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
