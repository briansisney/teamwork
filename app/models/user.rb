class User < ActiveRecord::Base
  has_many :assignments
  has_many :clients, through: :assignments
  has_many :roles, through: :assignments
end
