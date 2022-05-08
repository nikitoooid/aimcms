class Style < ApplicationRecord
  has_and_belongs_to_many :pages

  validates :title, presence: true
end
