class Assignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :client
  belongs_to :role
  
  validates :user, :client, :role, presence: true
  validates_uniqueness_of :user_id, :scope => :client_id
  default_scope {includes(:user).order('users.name')}

  def self.of(client)
    Assignment.where(client: client).includes(:role)
  end

end
