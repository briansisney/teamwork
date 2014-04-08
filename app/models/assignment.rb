class Assignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :client
  belongs_to :role
  
  validates :user, :client, :role, presence: true
  default_scope includes(:user).order('users.name')
end
