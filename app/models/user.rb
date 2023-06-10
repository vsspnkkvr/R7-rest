class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  devise   devise :database_authenticatable, :recoverable, :rememberable, :validatable, :lockable, :trackable, :jwt_authenticatable, jwt_revocation_strategy: self
end