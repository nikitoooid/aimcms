module RteTemplatesHelper
  # Helpers must be helper_name(block)
  # from RTE can be called helper_name or helper_name(block)

  def rte_list(block)
    return if block['blocks'].nil? || !block['blocks'].any? || block['params'].nil? || !Class.const_defined?(block['params']['model'].capitalize)
    
    model = Class.const_get(block['params']['model'].capitalize)

    model_objects = []
    
    if block['params']['find'].nil? || block['params']['find']['key'].nil? || block['params']['find']['value'].nil?
      model_objects = block['params']['order'].nil? ? model.all : model.order(block['params']['order'])
    else
      model_objects = model.where(block['params']['find']['key'] => block['params']['find']['value']) unless block['params']['find']['key'].nil? && block['params']['find']['value'].nil?
    end
    result = []
    
    model_objects.each do |model_object|
      result.push( create_block(block['blocks'].first, model_object) )
    end

    block['content'] = result.join
    block['blocks'] = nil
    create_block(block)
  end
end