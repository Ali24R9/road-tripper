class RoadtripsComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :roadtrip
end