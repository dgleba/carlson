module TrTrainingEmployeeHelper
  
  # each most.._cont expression must be unique..
  # if not, the each box will be filled with one term
  # add dummy columns to database if necessary.

  # search most columns in tr_training_employees table
  def most_tr_training_employees_cont
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "id"     
    ]
    TrTrainingEmployee.column_names.each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end
 
  # search most columns in tr_training_employees table
  # each most.._cont expression must be unique..
  def most2_tr_training_employees_cont
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "tr_training_record_id",
      "id"     
    ]
    TrTrainingEmployee.column_names.each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end
  
 

  # search most columns in tr_training_employees table
  # this here as a copy...
  def zz_most_tr_training_employees_cont
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "tr_training_record_id",
      "stf_employee_id",
      "id"
    ]
    TrTrainingEmployee.column_names.each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end


  
  # search some columns in tr_training_employees table
  # this is not done..
  def some_tr_training_employees_cont
    some_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "id"
    ]
    TrTrainingEmployee.column_names.each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end
  
end
