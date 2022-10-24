class Xml < ApplicationRecord
  has_one_attached :xml_content

  def active?
    self.is_formed
  end

  def execute_joiner
    result = JoinOffersService.new(self.url,{
      pairs:          self.pairs,
      offer_xpath:    self.offer_path,
      search_by:      self.search_by,
      remove_nodes:   self.remove_nodes,
      rewrite_nodes:  self.rewrite_nodes,
      join_nodes:     self.join_nodes,
      add_nodes:      self.add_nodes
    }).call

    result[:status] = :fail unless result[:status] == :success && self.append_xml(result[:body].first)

    result
  end

  def self.join_all

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
