class Xml < ApplicationRecord
  has_one_attached :xml_content

  def active?
    self.is_formed
  end

  def join
    # joined_xml = SyncProductsService.new(self.xml_url,{
    #   pairs:          self.pairs,
    #   offer_xpath:    self.offer_path,
    #   search_by:      self.search_by,
    #   remove_nodes:   self.remove_nodes,
    #   rewrite_nodes:  self.rewrite_nodes,
    #   join_nodes:     self.join_nodes,
    #   add_nodes:      self.add_nodes
    # }).call

    # return false if joined_xml.nil? || joined_xml.empty?

    # return self.append_xml(joined_xml)

    p
    p
    p "XML JOIN METHOD"
    p
    p

    true
  end

  private

  def append_xml(xml)
    # save xml as attached blob
  end
end
