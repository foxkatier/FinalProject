class Citation < ActiveRecord::Base
  #References the article table twice.
  belongs_to :article_cited, class_name => 'Article'
  belongs_to :article_referencing, class_name => 'Article'
  validates :article_cited, presence: true
  validates :article_referencing, presence: true

end
