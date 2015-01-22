class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  validates :username, :uniqueness => {:case_sensitive => false}
  has_many :trips
  has_many :comments
end
