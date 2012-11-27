class Employment < ActiveRecord::Base
  attr_accessible :course_of_study, :credit_hours, :enrolled_from, :enrolled_to, :major, :school_id, :user_id
  
  
  belongs_to :user
  belongs_to :employer
end
