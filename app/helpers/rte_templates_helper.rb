module RteTemplatesHelper
  # Helpers must be helper_name(block)
  # from RTE can be called helper_name or helper_name(block)

  def rte_list(block, object = nil)
    return if block_invalid?(block) || !Class.const_defined?(block['params']['model'].capitalize)
    
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
    # block['blocks'] = nil
    # create_block(block)
    block['content']
  end

  def rte_table(block, object = nil)
    return if block_invalid?(block) || object.nil? || block['params']['hash_path'].nil?

    table_params = deep_attr(object, block['params']['hash_path'])
    return if table_params.nil?

    result = []
    table_params.each do |table_param|
      result.push( create_block(block['blocks'].first, table_param) ) if table_param['show'] || table_param['show'].nil?
    end

    block['content'] = result.join
    # block['blocks'] = nil
    # create_block(block)
    block['content']
  end

  def rte_images(block, object = nil)
    return if block_invalid?(block) || object.nil? || block['params']['hash_path'].nil?
    
    images = deep_attr(object, block['params']['hash_path'])
    return if images.nil? || images.empty?
    
    result = []
    images.each do |i|
      result.push( create_block(block['blocks'].first, {'text' => i}) )
    end

    block['content'] = result.join
    # block['blocks'] = nil
    # create_block(block)
    block['content']
  end

  private

  def block_invalid?(block)
    return true if block['blocks'].nil? || !block['blocks'].any? || block['params'].nil?
  end
end