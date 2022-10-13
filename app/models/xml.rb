class Xml < ApplicationRecord
  has_one_attached :xml_content

  def active?
    self.is_formed
  end

  def append_xml(xml)
    return false if xml.nil?

    file = Tempfile.new("#{self.title}.xml")
    file.write xml.to_xml
    file.rewind

    xml_content.attach( io: file, filename: "#{self.title}.xml", content_type: 'text/xml')
    file.close
    file.unlink

    self.update(is_formed: xml_content.attached?)
  end
end
