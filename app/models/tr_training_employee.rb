class TrTrainingEmployee < ActiveRecord::Base
  belongs_to :tr_training_record
  belongs_to :stf_employee
end
