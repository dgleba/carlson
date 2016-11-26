class AddUniqueConstraintToStfAssetsAssetDescr < ActiveRecord::Migration
  def change
  
  add_index :stf_assets, [:asset,:description],  :unique => true

  change_column :stf_assets, :active, :integer, :default => 1
  
  end
end
