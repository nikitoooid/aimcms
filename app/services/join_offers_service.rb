require 'open-uri'

class JoinOffersService

  attr_reader :xml_document

  def initialize(source_url, params = {})
    @source_url = source_url
    @params = params
    @error_messsages = []
  end

  def call
    status = :success

    unless set_xml_document(@source_url)
      status = :error
      @error_messsages.push("Error, when setting XML document from #{@source_url};")
    end

    join_successful = false
    joined = 0

    # create array of joined elements
    if (@params[:pairs].nil? || @params[:pairs].empty?)
      status = :error
      @error_messsages.push("Pairs creating failed;")
    else
      @params[:pairs] = JSON.parse(@params[:pairs]) if @params[:pairs].is_a?(String)
    end

    @params[:pairs].each do |target|
      next if (target['support'].nil? || target['support'].empty?)
      
      xml_target = get_offer(target['name'])
      xml_support = get_offer(target['support']['name'])
      next if (xml_target.empty? || xml_support.empty?)

      xml_target.xpath('name')[0].content = target['support']['custom_name'] || "#{target['name']}/#{target['support']['name']}"
      xml_target.xpath('price')[0].content = xml_target.xpath('price')[0].content.to_f + xml_support.xpath('price')[0].content.to_f
      xml_target.xpath('@available')[0].content = is_available?(xml_target, xml_support) ? 'true' : 'false'

      #TODO:удаление лишних позиций

      join_successful = remove_nodes(xml_target, @params[:remove_nodes]) &&
                        rewrite_nodes(xml_target, xml_support, @params[:rewrite_nodes]) &&
                        join_nodes(xml_target, xml_support, @params[:join_nodes]) &&
                        add_nodes(xml_target, xml_support, @params[:add_nodes])

      if join_successful
        xml_support.remove 
      else
        @error_messsages.push("ERROR: #{target['name']} join unsuccessful;")
      end
    end if status == :success

    return {
      status: status,
      headers: {errors: @error_messsages},
      body: [@xml_document]
    }
  end

  private

  def set_xml_document(source_url)
    @xml_document = Nokogiri::XML(URI.open(source_url))
    @error_messsages.push("XML not found by url: #{@source_url};") if @xml_document.nil?
    @xml_document.nil? ? false : true
  end

  def get_offer(selector)
    result = xml_document.xpath("#{@params[:offer_xpath]}[#{@params[:search_by]}='#{selector}']")
    @error_messsages.push("#{selector} not found;") if result.empty?
    @error_messsages.push("too many #{selector}'s;") if (result.length > 1)
    result
  end

  def remove_nodes(offer, node_selectors)
    return true if (node_selectors.nil? || node_selectors.empty?)
    return false if offer.nil?
    
    nodes_to_remove = node_selectors.split(';')

    nodes_to_remove.each do |node_selector|
      node = offer.xpath(node_selector)
      node.any? ? node.remove : @error_messsages.push("node #{node_selector} dont exists;")
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

  def is_available? (target_offer, support_offer)
    target_availiability = target_offer.xpath('@available').text == 'true'
    target_availiability = support_offer.xpath('@available').text == 'true'

    target_availiability && target_availiability
  end

end
