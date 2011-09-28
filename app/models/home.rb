class Home < ActiveRecord::Base
  has_many :years
  accepts_nested_attributes_for :years, :allow_destroy => true, :reject_if => lambda { |a| a[:year].blank? }

end
