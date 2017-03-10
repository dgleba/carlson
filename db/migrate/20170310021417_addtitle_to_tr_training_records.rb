class AddtitleToTrTrainingRecords < ActiveRecord::Migration
  def change
      add_column :tr_training_records, :title, :string
  end
end
