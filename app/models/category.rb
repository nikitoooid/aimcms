class Category < ApplicationRecord
  has_many :products

  FOR = [:pages, :blocks, :documents, :products, :styles].freeze

  def available_for
    FOR
  end
end
