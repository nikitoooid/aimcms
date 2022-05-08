class Page < ApplicationRecord
  include ActionView::Helpers::TagHelper

  has_and_belongs_to_many :styles
  validates :title, presence: true

  def html_content
    blocks = ActiveSupport::JSON.decode(self.content)['blocks']
    result = []

    blocks.each { |block| result.push create_block(block) }

    result.join.to_s.html_safe
  end

  def style_content
    content = []
    self.styles.each { |style| content.push(style.content) }

    content_tag(:style, content.join(' ').html_safe) if content.any?
  end

  private

  def create_block(b)
    content = []

    content.push b['content'] unless b['content'].nil?

    b['blocks'].each { |block| content.push create_block(block) } unless b['blocks'].nil?

    content_tag(b['block'].to_sym, content.join.html_safe,
                id: b['id'], class: b['classlist'], style: b['style'],
                src: b['src'], href: b['href'], type: b['type'], data: b['data']) unless b['block'].nil?
  end

end
