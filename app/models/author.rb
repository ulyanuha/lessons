class Author < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation
  attr_accessor :password
  before_save :encrypt_password
  
  validates :name, :presence=> true, :uniqueness => true, :length => {:maximum => 10}
  validates :password, :presence=> true, :on => :create
  validates_confirmation_of :password
  
  def self.authenticate(name, password)
    author = find_by_name(name)
    if author && author.password_hash == BCrypt::Engine.hash_secret(password, author.password_salt)
      author
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
  
end