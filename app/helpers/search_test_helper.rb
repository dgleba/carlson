module SearchTestHelper
  
  # each most.._cont expression must be unique..
  # if not, the each box will be filled with one term
  # add dummy columns to database if necessary.

  # search most columns in search_tests table
  def most_search_tests_cont
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "id"     
    ]
    SearchTest.column_names.each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end
 
  # search most columns in search_tests table
  # each most.._cont expression must be unique..
  def most2_search_tests_cont
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "training_record_id",
      "id"     
    ]
    SearchTest.column_names.each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end
  

  def text1_search_tests_cont 
  # search  * text *  columns in .. table 
  # http://stackoverflow.com/questions/17980410/rails-get-the-names-of-all-a-tables-columns-of-a-certain-data-type-column 
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at"

    ]
    SearchTest.columns.select{ |c| c.type == :string || c.type == :text }.map(&:name).each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end

  
  
  # search most columns in search_tests table
  # this here as a copy...
  def zz_most_search_tests_cont
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "tr_training_record_id",
      "training_date",
      "id"
    ]
    SearchTest.column_names.each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end


  
  # search some columns in search_tests table
  # this is not done..
  def some_search_tests_cont
    some_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "tr_training_record_id",
      "id"
    ]
    SearchTest.column_names.each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end
  
end
