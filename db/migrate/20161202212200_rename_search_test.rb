class RenameSearchTest < ActiveRecord::Migration
  def change
    rename_table :search_test, :search_1
  end
end
