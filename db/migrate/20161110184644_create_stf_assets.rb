class CreateStfAssets < ActiveRecord::Migration
  def change
    create_table :stf_assets do |t|
      t.string :assetnum
      t.string :description
      t.integer :active_status
      t.integer :sort

      t.timestamps null: false
    end
  end
end
