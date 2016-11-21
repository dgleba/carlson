class AddUniqueConstraintToStfEmployeesClockName < ActiveRecord::Migration

  def change
    add_index :stf_employees, [ :clocknum, :name ], :unique => true
  end

end
