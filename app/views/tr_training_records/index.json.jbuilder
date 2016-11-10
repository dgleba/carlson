json.array!(@tr_training_records) do |tr_training_record|
  json.extract! tr_training_record, :id, :tr_course_id, :training_date, :details_of_training, :hours_trained, :location, :swi, :path_to_training_material, :tr_type_id, :tr_customer_id, :tr_program_id, :tr_part_id, :tr_cell_id, :stf_asset_id, :user_id
  json.url tr_training_record_url(tr_training_record, format: :json)
end
