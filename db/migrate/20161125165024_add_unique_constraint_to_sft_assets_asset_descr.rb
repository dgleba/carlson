class AddUniqueConstraintToSftAssetsAssetDescr < ActiveRecord::Migration
  def change

  add_index :stf_assets, [:assetnum,:description],  :unique => true

  change_column :stf_assets, :active_status, :integer, :default => 1
    
  end
end
