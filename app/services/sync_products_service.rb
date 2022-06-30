require 'open-uri'

class SyncProductsService
  
  def initialize(source_url, params = {})
    @source_url = source_url
    @params = params

    @whitelist = {
      categories: get_list(@params, :whitelist, :categories),
      products: get_list(@params, :whitelist, :products)
    }

    @blacklist = {
      categories: get_list(@params, :blacklist, :categories),
      products: get_list(@params, :blacklist, :products)
    }
  end

  def call
    error_messsages = []
    banned_categories = []
    accepted_categories = []

    xml_document = Nokogiri::XML(open(@source_url))
    
    if xml_document.nil?
      error_messsages.push("XML not found by url: #{@source_url}")
      return error_messsages
    end

    categories = xml_document.xpath(@params[:category_xpath]) unless @params[:category_xpath].nil?
    products = xml_document.xpath(@params[:product_xpath]) unless @params[:product_xpath].nil?
    
    categories.each do |c|
      id = c.xpath('@id').text.to_i
      parent_id = c.xpath('@parentId').text.to_i

      if banned_categories.include?(parent_id)
        banned_categories.push(id)
        next
      end
      
      if @whitelist[:categories].any? && !@whitelist[:categories].include?(c.text) && !accepted_categories.include?(parent_id)
        banned_categories.push(id)
        next
      end
      
      if @blacklist[:categories].any? && @blacklist[:categories].include?(c.text)
        banned_categories.push(id)
        next
      end
      
      if ProductCategory.exists?(id)
        accepted_categories.push(id)
        next
      end

      category = ProductCategory.new
      category.id = id
      category.title = c.text
      category.slug = id
      category.category_id = parent_id if !parent_id.zero? && ProductCategory.exists?(parent_id)

      error_messsages.push("Category #{category.title} not saved") unless category.save

      accepted_categories.push(id)
    end unless @params[:category_xpath].nil? || @params[:category_xpath].empty?

    products.each do |pr|
      id = pr.xpath('@id').text.to_i
      category_id = pr.xpath('categoryId').text.to_i
      new_product = !Product.exists?(id)
      
      next if @whitelist[:products].any? && !@whitelist[:products].include?(pr.xpath('name').text)
      next if !accepted_categories.include?(category_id)
      next if @blacklist[:products].any? && @blacklist[:products].include?(pr.xpath('name').text)
      next if !category_id.zero? && banned_categories.include?(category_id)

      product = new_product ? Product.new : Product.find(id)
      product_content = new_product ? {'params' => []} : ( product.content.is_a?(String) ? ActiveSupport::JSON.decode(product.content) : product.content )

      if new_product
        product.id = id
        product.title = pr.xpath('name').text
        product.slug = id
        product.description = pr.xpath('description').text.html_safe
      end

      product.product_category_id = category_id unless category_id.zero?
      product.available = pr.xpath('@available').text == 'true'
      product.price = pr.xpath('price').text.to_i

      feedimages = pr.xpath('picture')
      images = []
      feedimages.each do |i|
        images.push(i.text)
      end

      product.og_image = images.first
      product.picture_url = images.first
      product_content['images'] = images

      params = pr.xpath('param')
      params.each do |param|
        parameter = { 'name' => param.xpath('@name').text, 'value' => param.text }
        parameter['locale'] = {
          'uk' => param.xpath('@name').text,
          'en' => param.xpath('@name').text,
          'ru' => param.xpath('@name').text
        } if new_product
        write_param(product_content['params'],parameter)
      end

      product.content = product_content

      error_messsages.push("Product #{product.title} not saved") unless product.save

    end unless @params[:product_xpath].nil? || @params[:product_xpath].empty?

    error_messsages
  end

  private

  def write_param(arr, param)
    arr.each do |pr|
      if pr['name'] == param['name']
        pr['value'] = param['value']
        return
      end
    end

    arr.push param
  end

  def get_list(params, type, subtype)
    !params[type].nil? && !params[type][subtype].nil? && !params[type][subtype].empty? ? params[type][subtype].split(';') : []
  end

end
