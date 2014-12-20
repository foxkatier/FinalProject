class Author < ActiveRecord::Base
  has_many :articles, :through=>authorship
  validates :author_fname, :author_lname, presence: true
end
