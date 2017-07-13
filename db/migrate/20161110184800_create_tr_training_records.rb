class CreateTrTrainingRecords < ActiveRecord::Migration
  def change
    create_table :tr_training_records do |t|
      t.references :tr_course, index: true, foreign_key: true
      t.date :training_date
      t.text :details_of_training
      t.float :hours_trained
      t.string :location
      t.string :swi
      t.string :path_to_training_material
      t.references :tr_type, index: true, foreign_key: true
      t.references :tr_customer, index: true, foreign_key: true
      t.references :tr_program, index: true, foreign_key: true
      t.references :tr_part, index: true, foreign_key: true
      t.references :tr_cell, index: true, foreign_key: true
      t.references :stf_asset, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
