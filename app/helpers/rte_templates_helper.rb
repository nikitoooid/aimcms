module RteTemplatesHelper
  # Helpers must be helper_name(block)
  # from RTE can be called helper_name or helper_name(block)

  def rte_list(block, object = nil)
    return if block_invalid?(block) || !Class.const_defined?(block['params']['model'].capitalize)
    
    model = Class.const_get(block['params']['model'])

    model_objects = get_objects_of(model, block['params'])

    block['content'] = get_html_blocks(model_objects, block['blocks'].first)
    block['content']
  end

  def rte_category_products_list(block, object = nil)
    return if block_invalid?(block) || !Class.const_defined?(block['params']['model'].capitalize)
    
    model = Class.const_get(block['params']['model'])

    model_objects = get_objects_of(model, block['params'])
    children_objects = []
    
    model_objects.each do |object|
      children_objects += get_children_of(object) if model.reflect_on_association(:children)
    end

    model_objects += children_objects
    
    items = []
    model_objects.each do |object|
      items += object.items if !object.items.nil? && object.items.any?
    end

    block['content'] = get_html_blocks(items, block['blocks'].first)
    block['content']
  end

  def rte_table(block, object = nil)
    return if block_invalid?(block) || object.nil? || block['params']['hash_path'].nil?

    table_params = deep_attr(object, block['params']['hash_path'])
    return if table_params.nil? || !table_params.is_a?(Array)

    result = []
    table_params.each do |table_param|
      result.push( create_block(block['blocks'].first, table_param) ) if table_param['show'] || table_param['show'].nil?
    end

    block['content'] = result.join
    block['content']
  end

  def rte_images(block, object = nil)
    return if block_invalid?(block) || object.nil? || block['params']['hash_path'].nil?
    
    images = deep_attr(object, block['params']['hash_path'])
    return if images.nil? || images.empty? || !images.is_a?(Array)
    
    result = []
    images.each do |i|
      result.push( create_block(block['blocks'].first, {'text' => i}) )
    end

    block['content'] = result.join
    block['content']
  end

  private

  def get_children_of(object)
    return [] if object.children.nil? || object.children.empty?
    
    children = object.children
    sub_children = []

    children.each { |c| sub_children += get_children_of(c) }

    children + sub_children
  end

  def get_objects_of(model, params)
    model_objects = []
    
    if params['find'].nil? || params['find']['key'].nil? || params['find']['value'].nil?
      model_objects = params['order'].nil? ? model.all : model.order(params['order'])
    else
      model_objects = model.where(params['find']['key'] => params['find']['value']) unless params['find']['key'].nil? && params['find']['value'].nil?
    end

    model_objects = model_objects.limit(params['limit'].to_i) unless params['limit'].nil? && params['limit'].to_i.zero?
    model_objects
  end

  def get_html_blocks(objects, template=nil)
    return if template.nil?

    result = []
    
    objects.each do |object|
      result.push( create_block(template, object) )
    end

    result.join
  end

  def block_invalid?(block)
    return true if block['blocks'].nil? || !block['blocks'].any? || block['params'].nil?
  end
end