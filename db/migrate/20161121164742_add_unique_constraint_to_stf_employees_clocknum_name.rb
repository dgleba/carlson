class AddUniqueConstraintToStfEmployeesClocknumName < ActiveRecord::Migration
  def change
    add_index :stf_employees, [ :clocknum, :name ], :unique => true
    
    change_column :stf_employees, :active_status, :integer, :default => 1

      
  end
  
  

  
end
