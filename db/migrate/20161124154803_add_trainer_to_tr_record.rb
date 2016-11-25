class AddTrainerToTrRecord < ActiveRecord::Migration
  def change
    add_column :tr_training_records, :trainer, :string
  end
end
