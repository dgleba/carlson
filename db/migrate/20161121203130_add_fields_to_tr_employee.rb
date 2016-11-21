class AddFieldsToTrEmployee < ActiveRecord::Migration
  def change
    add_column :tr_training_employees, :status, :integer
    add_column :tr_training_employees, :ohsa_reportable, :string
    add_column :tr_training_employees, :length_of_service, :float
    add_column :tr_training_records, :plant, :string
  end
end
