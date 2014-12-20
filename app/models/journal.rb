class Journal < ActiveRecord::Base
  has_many :rankings
  has_many :articles
  validates :journal_title, :journal_issn, presence: true
end
