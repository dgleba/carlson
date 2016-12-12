class DropUnusedSearch < ActiveRecord::Migration
  def change

  ActiveRecord::Base.connection.execute <<-SQL
    Drop view if exists search;
  SQL
  end
end
