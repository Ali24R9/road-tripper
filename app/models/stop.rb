class Stop < ActiveRecord::Base
  belongs_to :trip
  has_many :activities, :dependent => :destroy
  accepts_nested_attributes_for :activities, :reject_if => lambda { |a| a[:description].blank? }, :allow_destroy => true
end