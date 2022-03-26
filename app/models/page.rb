class Page < ApplicationRecord
  include ActionView::Helpers::TagHelper

  def html_content
    blocks = ActiveSupport::JSON.decode(self.content)['blocks']
    result = []

    blocks.each { |block| result.push create_block(block) }

    result.join.to_s.html_safe
  end

  private

  def create_block(b)
    content = []

    content.push b['content'] unless b['content'].nil?

    unless b['blocks'].nil?
      b['blocks'].each { |block| content.push create_block(block) }
    end

    content_tag(b['block'].to_sym, content.join.html_safe,
                id: b['id'], class: b['classlist'], style: b['style'],
                src: b['src'], href: b['href'], type: b['type'], data: b['data']) unless b['block'].nil?
  end

end