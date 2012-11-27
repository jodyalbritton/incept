class User < ActiveRecord::Base
  has_merit

	rolify
	acts_as_followable
	acts_as_follower
	extend FriendlyId
  friendly_id :username, use: :slugged
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  attr_accessor :login

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :first_name, :last_name, :privacy, :current_password, :login
  # attr_accessible :title, :body
  
  has_many :task_completions
  has_many :tasks, :through => :task_completions
  has_many :task_ownerships, :class_name => "Task", :foreign_key => "user_id"
  has_many :employments
  has_many :employers, :through => :employments
  has_many :enrollments
  has_many :schools, :through => :enrollments
  
  validates_presence_of :username
  validates_length_of :username, :minimum => 5
  validate :username, :uniqueness  => true
  
  def total_task_minutes
    self.task_completions.sum(:active_minutes)
  end
   
   def self.find_first_by_auth_conditions(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        where(conditions).first
      end
    end
end
