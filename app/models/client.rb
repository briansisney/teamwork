class Client < ActiveRecord::Base
  has_many :assignments
  has_many :users, through: :assignments
  has_many :roles, through: :assignments

  validates :name, uniqueness: true, presence: true
end
