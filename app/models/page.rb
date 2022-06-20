class Page < ApplicationRecord
  include ActionView::Helpers::TagHelper

  belongs_to :category, class_name: 'PageCategory', foreign_key: 'category_id', optional: true
  has_and_belongs_to_many :styles
  validates :title, presence: true

  def style_content
    content = []
    self.styles.each { |style| content.push(style.content) }

    content_tag(:style, content.join(' ').html_safe) if content.any?
  end

end
