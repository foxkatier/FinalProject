class Subject < ActiveRecord::Base
  has_many :rankings
  validates :subject_title, presence:true
end
