class Question < ActiveRecord::Base
  belongs_to :exam
  has_many :alternatives, :dependent => :destroy
  accepts_nested_attributes_for :alternatives, :reject_if => lambda { |a| a[:alternative].blank? }, :allow_destroy => true
end

