class User < ActiveRecord::Base

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email.strip.downcase)
    if user && user.authenticate(password) 
      return user
    else 
      return nil
    end
  end

  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, :format => /@/, uniqueness: { case_sensitive: false }
  validates :password_confirmation, presence: true, length: { minimum: 4}
end
