class User < ActiveRecord::Base

  # for massAssignment
  attr_accessible :name, :email, :password, :password_confirmation, :configuration
  attr_reader :password

  validates_confirmation_of :password
  validates_uniqueness_of :email
  validates_presence_of :name, :password
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  has_one :configuration

  def password=(password)
    encryption = PasswordEncryptor.encrypt(password)

    self.password_salt = encryption[:salt]
    self.password_hash = encryption[:hash]

    @password = password
  end

end