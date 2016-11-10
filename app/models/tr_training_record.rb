class TrTrainingRecord < ActiveRecord::Base
  belongs_to :tr_course
  belongs_to :tr_type
  belongs_to :tr_customer
  belongs_to :tr_program
  belongs_to :tr_part
  belongs_to :tr_cell
  belongs_to :stf_asset
  belongs_to :user
end
