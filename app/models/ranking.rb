class Ranking < ActiveRecord::Base
  belongs_to :subject
  belongs_to :journal
end
