json.array!(@stf_assets) do |stf_asset|
  json.extract! stf_asset, :id, :assetnum, :description, :active_status, :sort
  json.url stf_asset_url(stf_asset, format: :json)
end
