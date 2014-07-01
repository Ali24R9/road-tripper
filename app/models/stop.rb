class Stop < ActiveRecord::Base
  belongs_to :user
  has_many :stopsComments
  has_many :users, through: :stopsComments
  has_and_belongs_to_many :roadtrips
end