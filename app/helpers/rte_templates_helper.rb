module RteTemplatesHelper
  # Helpers must be helper_name(block)
  # from RTE can be called helper_name or helper_name(block)

  def rte_list(block)
    return if block['blocks'].nil? || !block['blocks'].any?

    model = ApplicationRecord.descendants.select { |m| m.name == block['params']['model'].capitalize}.first
    model_objects = block['params']['order'].nil? ? model.all : model.order(block['params']['order'])
    
    result = []
    
    model_objects.each do |model_object|
      result.push( create_block(block['blocks'].first, model_object) )
    end

    block['content'] = result.join
    block['blocks'] = nil
    create_block(block)
  end
end