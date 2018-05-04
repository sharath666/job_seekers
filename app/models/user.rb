class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :role
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :jobs
  before_create :assign_def_role
  
    def role?(role)
    self.role.name.include?(role)
    end
    def assign_def_role
      self.role_id = Role.last.id
    end
end
