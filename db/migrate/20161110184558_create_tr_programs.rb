class CreateTrPrograms < ActiveRecord::Migration
  def change
    create_table :tr_programs do |t|
      t.string :name
      t.integer :active_status
      t.integer :sort

      t.timestamps null: false
    end
  end
end
