module RteHelper

  def rte_localization
    t('rte').to_json.html_safe
  end

  def html_content(resource, template = nil)
    blocks = ActiveSupport::JSON.decode(template.nil? ? resource.content : template)['blocks']
    result = []

    blocks.each { |block| result.push create_block(block, resource) }

    result.join.to_s.html_safe
  end

  private

  def create_block(b, model=nil)
    b = rte_attribute(b, model) if b['rtype'] == 'attribute'
    return if b.nil?

    content = []

    content.push b['content'] unless b['content'].nil?

    if b['rtype'] == 'helper'
      content.push rte_helper(b)
    else
      b['blocks'].each { |block| content.push create_block(block, model) } unless b['blocks'].nil?
    end

    content_tag(b['block'].to_sym, content.join.html_safe,
                id: b['id'], class: b['classlist'], style: b['style'],
                src: b['src'], href: b['href'], type: b['type'], data: b['data'], aria: b['aria'], tabindex: b['tabindex'])  unless b['block'].nil?
  end

  def rte_helper(block)
    return if block['helper'].nil?

    if block['params'].nil?
      ApplicationController.helpers.try(block['helper'])
    else
      ApplicationController.helpers.try(block['helper'], block)
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

  def deep_attr(obj, path)
    subpaths = path.split(".")
    object = obj

    subpaths.each do |path|
      # object[path] = {} if object[path].nil?
      return nil if object[path].nil?
      object = object[path]
    end
    
    object unless object.nil? || object.empty?
  end
end
