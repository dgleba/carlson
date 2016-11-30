class ViewCreateSearch < ActiveRecord::Migration
  def change
  
  ActiveRecord::Base.connection.execute <<-SQL
    Drop view if exists search_test;
  SQL

  ActiveRecord::Base.connection.execute <<-SQL
    
CREATE OR REPLACE
     VIEW search_test
     AS 
     Select  
        se.clocknum AS clocknum,se.name AS employee, rc.training_date AS training_date, (Select tr_courses.name from tr_courses where tr_courses.id = rc.tr_course_id) AS course_name, te.id AS id, te.tr_training_record_id AS training_record_id
      FROM tr_training_employees as te
      left join   tr_training_records as rc
          on te.tr_training_record_id=rc.id
      left join   stf_employees as se
          on se.id=te.stf_employee_id
      order by rc.id DESC
       
    SQL

  end
end
