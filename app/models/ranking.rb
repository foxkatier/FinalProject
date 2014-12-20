class Ranking < ActiveRecord::Base
  belongs_to :subject
  validates :subject, presence: true
  belongs_to :journal
  validates :subject, presence: true
end