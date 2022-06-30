class Block < ApplicationRecord
  include ActionView::Helpers
  
  validates :title, presence: true

  belongs_to :category, foreign_key: 'block_category_id', optional: true

  def prepare_template
    template = self.content.is_a?(String) ? ActiveSupport::JSON.decode(self.content) : self.content

    template['title'] = self.title
    template['block'] = self.container_tag
    template['block'] = self.rte_type
    template['template_name'] = self.template_name
    template['category'] = self.category.nil? ? t('admin.blocks.block.nocategory') : self.category.title
    
    template
  end

  def self.json_list
    result = {blocks: []}

    self.all.each do |block|
      result[:blocks].push(block.prepare_template)
    end
    
    result[:blocks].push({block: 'div', title: 'Advanced block', block_name: 'mg_adv', template_name: 'advanced'})
    result.to_json
  end

end
