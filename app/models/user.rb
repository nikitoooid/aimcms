class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar

  validates :first_name, presence: true
  validates :last_name, presence: true

  ROLES = ['Admin', 'User'].freeze

  def admin?
    self.is_a?(Admin)
  end

  def roles_available
    ROLES
  end
end
