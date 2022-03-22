module DocumentsHelper
  
  def document_cover(document)
    document.is_image? ? file_cover(document) : file_icon(document)
  end

  private

  def file_cover(document)
    content_tag :div, nil, style: "background: center / cover no-repeat url('#{url_for(document.file)}');height: 105px"
  end

  def file_icon(document)
    content_tag :div do
      content_tag :i, nil, class: "bi-filetype-#{document.extension}"
    end
  end

end
