class CreateTrCells < ActiveRecord::Migration
  def change
    create_table :tr_cells do |t|
      t.string :name
      t.string :operation
      t.string :operationid
      t.integer :active_status
      t.integer :sort

      t.timestamps null: false
    end
    
    add_index :tr_cells, [ :name, :operation, :operationid ], :unique => true 
    
  end
end
