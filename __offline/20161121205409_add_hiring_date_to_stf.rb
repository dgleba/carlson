class AddHiringDateToStf < ActiveRecord::Migration
  def change
    add_column :stf_employees, :hire_date, :date

  end
    ActiveRecord::Base.connection.execute(
        <<-SQL
          SELECT emp_enterprise_ceridian.cer_datehired AS stf_employees.hire_date,
          FROM emp_enterprise_ceridian
          INNER JOIN stf_employees
          ON emp_enterprise_ceridian.name = stf_employees.name;
        SQL
      )
end
