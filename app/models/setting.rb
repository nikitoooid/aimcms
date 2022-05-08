class Setting < ApplicationRecord
  
  has_one_attached :logo
  has_one_attached :favicon

  def favicon_url
    Rails.application.routes.url_helpers.rails_blob_path(self.favicon, only_path: true)
  end
end
