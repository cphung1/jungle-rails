class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, :format => /@/
  validates :password_confirmation, presence: true
end
