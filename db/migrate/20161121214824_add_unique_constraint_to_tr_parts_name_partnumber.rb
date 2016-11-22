class AddUniqueConstraintToTrPartsNamePartnumber < ActiveRecord::Migration

  def change
    add_index :tr_parts, [ :name, :partnumber ], :unique => true
    
    change_column :tr_parts, :active_status, :integer, :default => 1
  end
 
end
