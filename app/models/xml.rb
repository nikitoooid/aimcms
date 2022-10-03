class Xml < ApplicationRecord
  has_one_attached :xml_content

  def active?
    self.is_formed
  end

  def join
    p
    p
    p
    p 'JOIN METHOD'
    p
    p
    p
    joined_xml = SyncProductsService.new(self.url,{
      pairs:          self.pairs,
      offer_xpath:    self.offer_path,
      search_by:      self.search_by,
      remove_nodes:   self.remove_nodes,
      rewrite_nodes:  self.rewrite_nodes,
      join_nodes:     self.join_nodes,
      add_nodes:      self.add_nodes
    }).call
    p
    p
    p
    p 'SYNC'
    p
    p
    p
    if append_xml(joined_xml)
      self.is_formed = true
      return true
    end
    p
    p
    p
    p 'xxx FAILED xxx'
    p
    p
    p
    false
  end

  private

  def append_xml(xml)
    p
    p
    p
    p 'APPEND METHOD'
    p '--- checking arg'
    return false if xml.nil? || xml.empty?
    # save xml as attached blob
    p '--- creating temp'
    file = Tempfile.new("#{self.title}.xml")
    file.write xml.to_xml
    file.rewind
    p '--- attaching xml'
    xml_content.attach(
      io: file,
      filename: "#{self.title}.xml",
      # content_type: 'text/xml'
    )
    p '--- deleting temp'
    file.close
    file.unlink
    p '--- checking if attached'
    p xml_content.attached?
    xml_content.attached?
  end
end
