class CreateTrTrainingEmployees < ActiveRecord::Migration
  def change
  
    ActiveRecord::Base.connection.execute(
        <<-SQL
          SET foreign_key_checks = 0;
        SQL
      )
   
 
    create_table :tr_training_employees do |t|
      t.string :name
      t.string :description
      t.text :output
      t.references :tr_training_record, index: true, foreign_key: true
      t.references :stf_employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  
    ActiveRecord::Base.connection.execute( 
        <<-SQL
          SET foreign_key_checks = 1;
        SQL
      )
   
    
  end
end
