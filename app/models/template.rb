class Template < ApplicationRecord
  include ActionView::Helpers::TagHelper

  def prepare_template
    template = ActiveSupport::JSON.decode(self.content)['blocks'].first

    template['title'] = self.title
    template['block_name'] = "tpl_#{self.id}"
    template
  end

  def html_content
    blocks = ActiveSupport::JSON.decode(self.content)['blocks']
    result = []

    blocks.each { |block| result.push create_block(block) }

    result.join.to_s.html_safe
  end

  def self.json_list
    result = {blocks: []}

    self.all.each do |doc|
      result.blocks.push(doc.prepare_template)
    end

    result.to_json
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
