class Setting < ApplicationRecord
  include ActionView::Helpers::TagHelper
  
  has_one_attached :logo
  has_one_attached :favicon

  belongs_to :header, class_name: 'Block', foreign_key: 'header_id', optional: true
  belongs_to :footer, class_name: 'Block', foreign_key: 'footer_id', optional: true
  belongs_to :product_template, class_name: 'Block', foreign_key: 'product_template_id', optional: true
  belongs_to :style, optional: true

  def favicon_url
    Rails.application.routes.url_helpers.rails_blob_path(self.favicon, only_path: true)
  end

  def style_content
    content_tag(:style, self.style.content) unless self.style.nil?
  end
end
