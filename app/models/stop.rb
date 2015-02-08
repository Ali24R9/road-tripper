class Stop < ActiveRecord::Base
  # belongs_to :user
  # has_many :stopsComments
  # has_many :users, through: :stopsComments
  # has_and_belongs_to_many :roadtrips
  belongs_to :trip
  has_many :activities, :dependent => :destroy
  accepts_nested_attributes_for :activities, :reject_if => lambda { |a| a[:description].blank? }, :allow_destroy => true
end