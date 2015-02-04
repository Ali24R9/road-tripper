class Trip < ActiveRecord::Base

  belongs_to :user
  has_many :stops
  accepts_nested_attributes_for :stops

end