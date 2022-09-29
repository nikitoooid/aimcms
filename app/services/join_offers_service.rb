require 'open-uri'

class JoinOffersService

  attr_reader :xml_document

  def initialize(source_url, params = {})
    @source_url = source_url
    @params = params
    @error_messsages = []
  end

  def call
    # open xml
    return nil unless set_xml_document(@source_url)
    join_successful = false
    joined = 0

    # create array of joined elements
    return nil if (@params.pairs.nil? || @params.pairs.empty?)
    @params.pairs.each do |target, support|
      next if (support.nil? || support.empty?)
      
      xml_target = get_offer(target)
      xml_support = get_offer(support['name'])
      next if (xml_target.empty? || xml_support.empty?)

      xml_target.xpath('name')[0].content = support['custom_name'] || "#{target}/#{support['name']}"
      #суммировать цену
      xml_target.xpath('price')[0].content = xml_target.xpath('price')[0].content.to_f + xml_support.xpath('price')[0].content.to_f
      #доступность

      #удаление лишних позиций

      join_successful = remove_nodes(xml_target, @params[:remove_nodes]) &&
                        rewrite_nodes(xml_target, xml_support, @params[:rewrite_nodes]) &&
                        join_nodes(xml_target, xml_support, @params[:join_nodes]) &&
                        add_nodes(xml_target, xml_support, @params[:add_nodes])

      if join_successful
        p("DONE: #{target} join successful")
        xml_support.remove 
      else
        p "ERROR: #{target} join unsuccessful"
        @error_messsages.push("ERROR: #{target} join unsuccessful")
      end

      joined += 1 if join_successful
    end

    @xml_document
  end

  private

  def set_xml_document(source_url)
    @xml_document = Nokogiri::XML(open(source_url))
    @error_messsages.push("XML not found by url: #{@source_url}") if @xml_document.nil?
    @xml_document.nil? ? false : true
  end

  def get_offer(selector)
    result = xml_document.xpath("#{@params[:offer_xpath]}[#{@params[:search_by]}='#{selector}']")
    @error_messsages.push("#{selector} not found") if result.empty?
    @error_messsages.push("too many #{selector}'s") if (result.length > 1)
    result
  end

  def remove_nodes(offer, node_selectors)
    return true if (node_selectors.nil? || node_selectors.empty?)
    return false if offer.nil?
    
    nodes_to_remove = node_selectors.split(';')

    nodes_to_remove.each do |node_selector|
      node = offer.xpath(node_selector)
      node.any? ? node.remove : @error_messsages.push("node #{node_selector} dont exists")
    end
    
    true
  end

  def rewrite_nodes(target_offer, support_offer, node_selectors)
    return true if (node_selectors.nil? || node_selectors.empty?)
    return false if (target_offer.nil? || support_offer.nil?)

    nodes_to_rewrite = node_selectors.split(';')

    nodes_to_rewrite.each do |node_selector|
      target_node = target_offer.xpath(node_selector).first
      support_node = support_offer.xpath(node_selector).first
      next if (target_node.nil? || support_node.nil?)

      target_node.content = support_node.content
    end
    
    true
  end

  def join_nodes(target_offer, support_offer, node_selectors, join_via = '/')
    return true if (node_selectors.nil? || node_selectors.empty?)
    return false if (target_offer.nil? || support_offer.nil?)

    nodes_to_join = node_selectors.split(';')

    nodes_to_join.each do |node_selector|
      target_node = target_offer.xpath(node_selector).first
      support_node = support_offer.xpath(node_selector).first
      next if (target_node.nil? || support_node.nil?)

      target_node.content = "#{target_node.content}#{join_via}#{support_node.content}"
    end
    
    true
  end

  def add_nodes(target_offer, support_offer, node_selectors)
    return true if (node_selectors.nil? || node_selectors.empty?)
    return false if (target_offer.nil? || support_offer.nil?)

    nodes_to_add = node_selectors.split(';')

    nodes_to_add.each do |node_selector|
      support_node = support_offer.xpath(node_selector).first
      next if support_node.nil?

      target_offer.first.add_child(support_node)
    end

    true
  end

end
