class Document < ApplicationRecord
  has_one_attached :file
  
  def extension
    self.file.filename.extension
  end

  def url
    Rails.application.routes.url_helpers.rails_blob_path(self.file, only_path: true)
  end

  def permanent_url
    "/file/#{self.id}"
  end

  def is_dir?
    self.extension == 'dir'
  end

  def is_image?
    self.extension == 'jpg' || self.extension == 'jpeg' || self.extension == 'gif' || self.extension == 'png' || self.extension == 'svg' || self.extension == 'bmp'
  end

end
