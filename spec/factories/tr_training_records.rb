FactoryGirl.define do
  factory :tr_training_record do
    tr_course nil
    training_date "2016-11-10"
    details_of_training "MyText"
    hours_trained 1.5
    location "MyString"
    swi "MyString"
    path_to_training_material "MyString"
    tr_type nil
    tr_customer nil
    tr_program nil
    tr_part nil
    tr_cell nil
    stf_asset nil
    user nil
  end
end
