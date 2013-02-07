class Author < ActiveRecord::Base
  attr_accessible :name, :password
  validates :name, :presence=> true
end