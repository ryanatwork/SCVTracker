class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :students, :class_name => "Student", :foreign_key => "school_deputy_id"

  has_many :assignments
  has_many :roles, :through => :assignments

  def name
    self.first_name + ' ' + self.last_name
  end

  def has_role?(role_sym)
      roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end

  def school_deputy?
    has_role?(:school_deputy)
  end

end
