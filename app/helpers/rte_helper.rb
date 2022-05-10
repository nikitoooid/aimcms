module RteHelper

  def rte_localization
    t('rte').to_json.html_safe
  end

  def html_content(resource)
    blocks = ActiveSupport::JSON.decode(resource.content)['blocks']
    result = []

    blocks.each { |block| result.push create_block(block) }

    result.join.to_s.html_safe
  end

  private

  def create_block(b, model=nil)
    b = rte_attribute(b, model) if b['rtype'] == 'attribute'
    content = []

    content.push b['content'] unless b['content'].nil?

    if b['rtype'] == 'helper'
      content.push rte_helper(b)
    else
      b['blocks'].each { |block| content.push create_block(block, model) } unless b['blocks'].nil?
    end

    content_tag(b['block'].to_sym, content.join.html_safe,
                id: b['id'], class: b['classlist'], style: b['style'],
                src: b['src'], href: b['href'], type: b['type'], data: b['data']) unless b['block'].nil?
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
    return block if model.nil?
    
    block['block'] = 'span' if block['block'].nil?
    block['content'] = model[block['params']['attribute']] unless block['params'].nil? || block['params']['attribute'].nil?
    block
  end

end
