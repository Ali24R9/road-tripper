class Trip < ActiveRecord::Base
  # belongs_to :user
  # has_many :roadtripsComments
  # has_many :users, through: :roadtripsComments
  # has_and_belongs_to_many :stops
  belongs_to :user
  has_many :stops
end