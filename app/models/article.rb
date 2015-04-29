class Article < ActiveRecord::Base
  include PgSearch
  pg_search_scope :quick_search, against: [:title, :content]

  validates :title, :content, presence: true
end
