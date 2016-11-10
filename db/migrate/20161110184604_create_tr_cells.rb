class CreateTrCells < ActiveRecord::Migration
  def change
    create_table :tr_cells do |t|
      t.string :name
      t.integer :active_status
      t.integer :sort

      t.timestamps null: false
    end
  end
end
