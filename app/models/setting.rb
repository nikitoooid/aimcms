class Setting < ApplicationRecord
  
  has_one_attached :logo
  has_one_attached :favicon

  belongs_to :header, class_name: 'Block', foreign_key: 'header_id', optional: true
  belongs_to :footer, class_name: 'Block', foreign_key: 'footer_id', optional: true

  def favicon_url
    Rails.application.routes.url_helpers.rails_blob_path(self.favicon, only_path: true)
  end
end
