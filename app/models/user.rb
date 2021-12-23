class User < ApplicationRecord

  devise :database_authenticatable, :registerable, :recoverable,:rememberable, :trackable, :validatable

  validates :email, presence: true

  validates :email, uniqueness: { case_sensitive: false }

  alias_method :authenticate, :valid_password?

end
