module Search1Helper
  
  # search most columns in search1 view
  def most_search1s_cont
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at"  
    ]
    Search1.column_names.each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_all"
  end

 
  def text1_search1s_cont
  #
  # search  * text *  columns in .. table
  #
  # http://stackoverflow.com/questions/17980410/rails-get-the-names-of-all-a-tables-columns-of-a-certain-data-type-column
  # ModelClass.columns.select{ |c| c.type == :integer }.map(&:name)
  #
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "id",
      "training_record_id",
      "training_date"      
    ]
    Search1.columns.select{ |c| c.type == :string || c.type == :text }.map(&:name).each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end

  def text2_search1s_cont
  #
  # search  * text *  columns in .. table
  #
  # http://stackoverflow.com/questions/17980410/rails-get-the-names-of-all-a-tables-columns-of-a-certain-data-type-column
  # ModelClass.columns.select{ |c| c.type == :integer }.map(&:name)
  #
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
      "id",
      "training_record_id",
      "training_date",
      "clocknum"
    ]
    Search1.columns.select{ |c| c.type == :string || c.type == :text }.map(&:name).each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end

  
  def text3_search1s_cont
  #
  # search  * text *  columns in .. table
  #
  # http://stackoverflow.com/questions/17980410/rails-get-the-names-of-all-a-tables-columns-of-a-certain-data-type-column
  # ModelClass.columns.select{ |c| c.type == :integer }.map(&:name)
  #
    most_attributes = []
    attributes_to_exclude = [
      "created_at",
      "updated_at",
    ]
    Search1.columns.select{ |c| c.type == :string || c.type == :text || c.type == :integer }.map(&:name).each do |column_name|
      most_attributes << column_name unless column_name.in?(attributes_to_exclude)
    end
    most_attributes.join("_or_") + "_cont_any"
  end

  
end