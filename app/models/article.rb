class Article < ActiveRecord::Base
  belongs_to :journal
  validates :journal, presence: true
  validates :article_title, uniquenese:true
  has_many :authors, :through=>authorship
  
  # This is to set up the relationship so that the Citation table references the article table twice#
  has_many :origin_article_cited, :class_name=>'Citation', :foreign_key=>'article_cited_id'
  has_many :origin_article_referencing, :class_name=>'Citation', :foreign_key=>'article_referencing_id'
end
