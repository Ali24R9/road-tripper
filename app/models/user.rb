class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_secure_password
  # validates :username, :uniqueness => {:case_sensitive => false}
  has_many :trips
  has_many :comments

  validates_uniqueness_of :email
  validates :email, presence: true
  # validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, on: :update }

end
