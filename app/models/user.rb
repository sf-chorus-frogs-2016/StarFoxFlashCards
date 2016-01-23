require 'bcrypt'

class User < ActiveRecord::Base
  validates :password_hash, :email, presence: true, allow_blank: false
  validates :email, uniqueness: true
  has_many :rounds

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end


end
