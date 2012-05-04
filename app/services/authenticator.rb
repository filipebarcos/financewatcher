class Authenticator
  
  def self.auth(login, password)
    user = User.find_by_email(login)
    
    return unless user
    
    hash = PasswordEncryptor.hasher(password, user.password_salt)
    
    return user if user.password_hash == hash
  end
end