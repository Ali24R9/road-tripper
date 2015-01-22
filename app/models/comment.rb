class Comment < ActiveRecord::Base
  # belongs_to :user
  # belongs_to :stop
  belongs_to :user
  belongs_to :trip
end