class Tagging < ActiveRecord::Base
  belongs_to :exam
  belongs_to :tag
end
