class Category < ApplicationRecord
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
