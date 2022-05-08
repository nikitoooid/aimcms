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

  def create_block(b)
    content = []

    content.push b['content'] unless b['content'].nil?
    content.push hlpr(b['helper'], b['params']) if b['rtype'] == 'helper'

    b['blocks'].each { |block| content.push create_block(block) } unless b['blocks'].nil?

    content_tag(b['block'].to_sym, content.join.html_safe,
                id: b['id'], class: b['classlist'], style: b['style'],
                src: b['src'], href: b['href'], type: b['type'], data: b['data']) unless b['block'].nil?
  end

  def hlpr(name, params=nil)
    return if name.nil?

    if params.nil?
      ApplicationController.helpers.try(name)
    else
      ApplicationController.helpers.try(name, params)
    end
  end

end
