class TrTrainingRecord < ActiveRecord::Base
  belongs_to :tr_course
  belongs_to :tr_type
  belongs_to :tr_customer
  belongs_to :tr_program
  belongs_to :tr_part
  belongs_to :tr_cell
  belongs_to :stf_asset
  
  belongs_to :tr_secondary_course_name 
  
  belongs_to :user
  
  has_many :tr_training_employees , dependent: :destroy

  has_many :stf_employees, :through => :tr_training_employees, :class_name => 'StfEmployee'
  
  accepts_nested_attributes_for :stf_employees
  
  #Don't save record if no employee is chosen http://stackoverflow.com/questions/22471205/how-can-i-validate-the-nested-attributes-field-in-rails-4
  accepts_nested_attributes_for :tr_training_employees,  allow_destroy: true, reject_if: proc() { | attrs | attrs[ 'stf_employee_id' ] .blank? }
  
  validates :tr_course, :training_date, :presence => true
  # validates :tr_training_employees, presence: { message: "missing training employee"}
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
