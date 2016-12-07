class Search1 < ActiveRecord::Base
  belongs_to :training_record
  self.table_name = "search_1"
  self.primary_key = 'id'
  
  before_create :test
  before_update :test
  def test
    Date.today.at_beginning_of_month.midnight
  end
end
