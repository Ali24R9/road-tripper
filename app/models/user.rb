class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, :uniqueness => {:case_sensitive => false}
  has_many :stops
  has_many :roadtrips
  has_many :roadtripsComments
  has_many :roadtrips, through: :roadtripsComments
  has_many :stopsComments
  has_many :stops, through: :stopsComments
end
