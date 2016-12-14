class TrTrainingEmployee < ActiveRecord::Base
  belongs_to :tr_training_record
  belongs_to :stf_employee
  attr_accessor :searchm
  
  before_save :searchm 
  accepts_nested_attributes_for :stf_employee
  
  # use audited for model record history
  audited
  
  
  def searchm
    # i also tried searchm_cont
    [tr_training_record_id, stf_employee.name, stf_employee.clocknum].reject(&:blank?).join("$|$")
  end
  
  def srch
    [ tr_training_record_id, stf_employee.name, stf_employee.clocknum ].compact.to_sentence
  end
  
end
