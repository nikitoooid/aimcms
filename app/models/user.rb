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

  def avatar_url(variant=nil)
    avatar_request = variant.nil? ? self.avatar : self.avatar.variant(resize_to_limit: variant)

    if self.avatar.attached?
      Rails.application.routes.url_helpers.rails_blob_path(avatar_request, only_path: true)
    else
      asset_path('user.png')
    end
  end
end
