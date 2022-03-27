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

  def self.json_list
    result = []

    self.all.each do |doc|
      result.push({
        title: doc.title,
        ext: doc.extension,
        url: doc.permanent_url,
        cover: (
          Rails.application.routes.url_helpers.rails_blob_path(
            doc.file.variant(resize_to_limit: [110,nil]), only_path: true
          ) if doc.is_image?),
        desc: doc.description
      })
    end

    result.to_json
  end

end
