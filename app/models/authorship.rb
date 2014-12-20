class Authorship < ActiveRecord::Base
  belongs_to :author
  belongs_to :article
  validates :author, presence: true
  validates :article, presence: true
end
