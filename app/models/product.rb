class Product < ApplicationRecord
  # belongs_to :template, class_name: 'Block', foreign_key: 'template_id', optional: true, dependent: :destroy
  belongs_to :category, foreign_key: 'product_category_id', optional: true
end
