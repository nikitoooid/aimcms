class Document < ApplicationRecord
  has_one_attached :file
  
  def extension
    self.file.filename.extension
  end

  def url
    Rails.application.routes.url_helpers.rails_blob_path(self.file, only_path: true)
  end
end
