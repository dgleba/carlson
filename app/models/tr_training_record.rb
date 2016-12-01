class TrTrainingRecord < ActiveRecord::Base
  belongs_to :tr_course
  belongs_to :tr_type
  belongs_to :tr_customer
  belongs_to :tr_program
  belongs_to :tr_part
  belongs_to :tr_cell
  belongs_to :stf_asset
  belongs_to :user
  has_many :tr_training_employees
  has_many :stf_employees, :through => :tr_training_employees, :class_name => 'StfEmployee'
  
  accepts_nested_attributes_for :stf_employees
  accepts_nested_attributes_for :tr_training_employees,  allow_destroy: true
  
  default_scope {order('id DESC')}

  # use audited for model record history
  audited
  
  def to_s
    # show columns contents, not record object like: 	#<Vehicle:0x007f343b3f2890>	2016-06-08	Details	Edit	Delete
    # http://stackoverflow.com/questions/4829909/how-do-i-print-out-the-contents-of-an-object-in-rails-for-easy-debugging
    #"Name:#{self.name} Age:#{self.age} Weight: #{self.weight}"
    "##{id}, on:#{training_date}, course:#{tr_course.name}"
  end


end
