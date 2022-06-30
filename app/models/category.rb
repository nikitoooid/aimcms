class Category < ApplicationRecord

  has_many :children, class_name: 'Category'
  belongs_to :parent, class_name: 'Category', foreign_key: 'category_id', optional: true

  MAIN_TYPES = ['PageCategory', 'BlockCategory', 'DocumentCategory'].freeze
  ADDITIONAL_TYPES =  ['StyleCategory', 'DocumentCategory'].freeze
  STORE_TYPES = ['ProductCategory'].freeze

  def available_main_types
    MAIN_TYPES
  end

  def available_additional_types
    ADDITIONAL_TYPES
  end

  def available_store_types
    STORE_TYPES
  end
end
