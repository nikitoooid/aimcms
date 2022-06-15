class Category < ApplicationRecord
  has_many :products

  FOR = [:pages, :blocks, :documents, :products, :styles].freeze
end
