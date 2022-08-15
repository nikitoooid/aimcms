module RteHelper

  def rte_localization
    t('rte').to_json.html_safe
  end

  def html_content(resource, template = nil)
    content = prepare_json(template.nil? ? resource.content : template)
    result = []

    blocks = content['multilang'] == true ? content[I18n.locale.to_s]['blocks'] : content['blocks']
    blocks.each { |block| result.push create_block(block, resource) }

    result.join.to_s.html_safe
  end

  def deep_attr(obj, path)
    subpaths = path.split(".")
    object = obj

    subpaths.each do |sp|
      attribute_command_result = attribute_commands_processor(obj, sp)
      return attribute_command_result unless attribute_command_result.nil?
      return nil if object[sp].nil?
      
      object = object[sp]
    end
    
    object unless object.nil? || object.empty?
  end

  private

  def create_block(b, model=nil)
    b = b[I18n.locale.to_s] unless b['multilang'].nil? && b[I18n.locale.to_s].nil?
    b = rte_attribute(b, model) if b['rtype'] == 'attribute'
    return if b.nil?

    content = []

    content.push b['content'] unless b['content'].nil?

    if b['rtype'] == 'helper'
      content.push rte_helper(b, model)
    else
      b['blocks'].each { |block| content.push create_block(block, model) } unless b['blocks'].nil?
    end

    content_tag(b['block'].to_sym, content.join.html_safe,
                id: b['id'], class: b['classlist'], style: b['style'],
                src: b['src'], href: b['href'], type: b['type'], data: b['data'], aria: b['aria'], tabindex: b['tabindex'])  unless b['block'].nil?
  end

  def rte_helper(block, model=nil)
    return if block['helper'].nil?
    if block['params'].nil?
      ApplicationController.helpers.try(block['helper'], nil, model)
    else
      ApplicationController.helpers.try(block['helper'], block, model)
    end
  end

  def rte_attribute(block, model=nil)
    return if model.nil?
    
    block['block'] = 'span' if block['block'].nil?
    
    block['content'] = deep_attr(model, deep_attr(block, 'params.attribute.content')) unless deep_attr(block, 'params.attribute.content').nil?
    block['src'] = deep_attr(model, deep_attr(block, 'params.attribute.src')) unless deep_attr(block, 'params.attribute.src').nil?
    block['href'] = deep_attr(model, deep_attr(block, 'params.attribute.href')) unless deep_attr(block, 'params.attribute.href').nil?
    block['alt'] = deep_attr(model, deep_attr(block, 'params.attribute.alt')) unless deep_attr(block, 'params.attribute.alt').nil?
    
    block
  end

  def prepare_json(content)
   content.is_a?(String) ? ActiveSupport::JSON.decode(content) : content
  end

  def attribute_commands_processor(object, command)
    return unless command.first == "[" && command.last == "]"
    subcommands = command[1..-2].split('|')
    result = []

    subcommands.each do |sc|
      if sc.first == '"' && sc.last == '"'
        result.push(sc[1..-2])
      elsif !object[sc].nil? 
        result.push(object[sc])
      end
    end

    return result.join if result.any?
  end
end
