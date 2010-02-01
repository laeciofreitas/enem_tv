class Exam < ActiveRecord::Base

  has_many :questions, :dependent => :destroy
  has_many :taggings, :dependent => :destroy
  has_many :tags, :through => :taggings
  accepts_nested_attributes_for :questions, :reject_if => lambda {|a| a[:question].blank?}, :allow_destroy => true

  def tag_names
    tags.map(&:name).join(' ')
  end

  def tag_names=(names)
    self.tags = Tag.with_names(names.split(/\s+/))
  end

end

