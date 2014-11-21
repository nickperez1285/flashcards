class User < ActiveRecord::Base
  include BCrypt
  # associations here later

  validates :name, :email, :password_hash, presence: true
  validates_uniqueness_of :email

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(plaintext)
    @password = Password.create(plaintext)
    self.password_hash = @password
  end

  def authenticate(plaintext)
    (self && Password.new(self.password_hash) == plaintext) ? true : false
  end
end
