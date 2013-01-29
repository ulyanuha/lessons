class Post < ActiveRecord::Base
  attr_accessible :body, :published, :title, :author_id
  belongs_to :author
  validates :title, :presence => true
  validates :author_id, :presence => true
end
