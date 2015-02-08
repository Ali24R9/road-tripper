class Trip < ActiveRecord::Base

  belongs_to :user
  has_many :stops, :dependent => :destroy
  accepts_nested_attributes_for :stops, :reject_if => lambda { |a| a[:location].blank? }, :allow_destroy => true

end