class Product < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :template, class_name: 'Block', foreign_key: 'template_id', optional: true, dependent: :destroy
end
