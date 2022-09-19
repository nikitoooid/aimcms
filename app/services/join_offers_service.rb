require 'open-uri'

attr_reader :xml_document

class JoinOffersService
  def initialize(source_url, params = {})
    @source_url = source_url
    # @params = params
    @params = {
      "pairs" => {
        'SIE-035SHDC' => {"name" => 'SOE-035SHDC', "custom_name" => "Кондиціонер SIE/SOE-035SHDC"},
        'SIE-025SHDC' => {"name" => 'SOE-025SHDC', "custom_name" => "Кондиціонер SIE/SOE-025SHDC"},
        'SIE-050SHDC' => {"name" => 'SOE-050SHDC', "custom_name" => "Кондиціонер SIE/SOE-050SHDC"}
      },
      remove_nodes: "",
      rewrite_nodes: "description",
      join_nodes: "param[name='Вес нетто, кг']",
      add_nodes: "url;picture;param[name='Компрессор'];param[name='Расстояние между лапами, мм']"
    }
    @error_messsages = []
    # params[:pairs] = {'SIE-035SHDC' => {"name" => 'SOE-035SHDC', "custom_name" => "Кондиціонер"}}
  end

  def call
  
    # open xml
    return unless set_xml_document(@source_url)
    join_successful = false
    joined = 0

    # create array of joined elements
    return unless @params['pairs'].nil? || @params['pairs'].empty?
    @params['pairs'].each do |target, support|
      next if support.nil? || support.empty?
      
      xml_target = get_offer(target)
      xml_support = get_offer(support['name'])
      next if xml_target.empty? || xml_support.empty?

      xml_target.xpath('name')[0].content = support['custom_name'] || "#{target}/#{support['name']}"
      #суммировать цену
      #доступность

      join_successful = remove_nodes(xml_target, @params[:remove_nodes])
      join_successful = rewrite_nodes(xml_target, xml_support, @params[:rewrite_nodes])
      join_successful = join_nodes(xml_target, xml_support, @params[:join_nodes])
      join_successful = add_nodes(xml_target, xml_support, @params[:add_nodes])

      xml_support.remove if join_successful
      joined++ if join_successful
    end

    # save xml as public file (???) if join_successful
    puts ("
    -----------------------------------------------------------------------------
    

    JOINED: #{joined} offers
    ERRORS: #{@error_messsages.length}

    #{@error_messsages.join("\n")}
    

    -----------------------------------------------------------------------------
    ")
  end

  private

  def set_xml_document(source_url)
    @xml_document = Nokogiri::XML(open(source_url))
    @error_messsages.push("XML not found by url: #{@source_url}") if @xml_document.nil?
    @xml_document.nil? ? false : true
  end

  def get_offer(selector)
    result = xml_document.xpath("#{@params[:offer_xpath]}[#{@params[:search_by]}=#{selector}]")
    error_messsages.push("#{selector} not found") if result.empty?
    error_messsages.push("too many #{selector}'s") if result.length > 1
    result
  end

  def remove_nodes(offer, node_selectors)
    return true if node_selectors.nil? || node_selectors.empty?
    return false if offer.nil?
    
    nodes_to_remove = node_selectors.split(';')

    nodes_to_remove.each do |node_selector|
      node = offer.xpath(node_selector)
      node.any? ? node.remove : @error_messsages.push("node #{node_selector} dont exists")
    end
    
    true
  end

  def rewrite_nodes(target_offer, support_offer, node_selectors)
    return true if node_selectors.nil? || node_selectors.empty?
    return false if target_offer.nil? || support_offer.nil?

    nodes_to_rewrite = node_selectors.split(';')

    nodes_to_rewrite.each do |node_selector|
      target_node = target_offer.xpath(node_selector).first
      support_node = support_offer.xpath(node_selector).first
      next if target_node.nil? || support_node.nil?

      target_node.content = support_node.content
    end
    
    true
  end

  def join_nodes(target_offer, support_offer, node_selectors, join_via = '/')
    return true if node_selectors.nil? || node_selectors.empty?
    return false if target_offer.nil? || support_offer.nil?

    nodes_to_join = node_selectors.split(';')

    nodes_to_join.each do |node_selector|
      target_node = target_offer.xpath(node_selector).first
      support_node = support_offer.xpath(node_selector).first
      next if target_node.nil? || support_node.nil?

      target_node.content = "#{target_node.content}#{join_via}#{support_node.content}"
    end
    
    true
  end

  def add_nodes(target_offer, support_offer, node_selectors)
    return true if node_selectors.nil? || node_selectors.empty?
    return false if target_offer.nil? || support_offer.nil?

    nodes_to_add = node_selectors.split(';')

    nodes_to_add.each do |node_selector|
      target_node = target_offer.xpath(node_selector).first
      support_node = support_offer.xpath(node_selector).first
      next if target_node.nil? || support_node.nil?

      target_node.add_next_sibling(support_node)
    end

    true
  end
end

# JoinOffersService.new('http://src.ktg.in.ua/price/yml_catalog.xml').call

# '<yml_catalog date="2022-09-15 09:30">
# <shop>
# <offers>

# <offer id="6242" available="false">
# <url>https://b2b.ktg.in.ua/catalog/6242</url>
# <price>5698.00</price>
# <currencyId>UAH</currencyId>
# <categoryId>30</categoryId>
# <picture>
# https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6242/3958ae8916-1_resize_1200x1200.png
# </picture>
# <picture>
# https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6242/0458502aa7-2_resize_1200x1200.png
# </picture>
# <name>SIE-035SHDC</name>
# <description>
# Потужність охолодження 3,45кВт, Магістраль 6,35(1/4) / 9,52(3/8), живлення 220-240В / 1Ф / 50Гц, максимальна довжина магістралі 15м, максимальний перепад висот 5м
# </description>
# <param name="Производительность охл., кВт">3.45</param>
# <param name="Производительность нагр., кВт">3.5</param>
# <param name="Тип оборудования">Бытовые</param>
# <param name="Тип блока">Настенный</param>
# <param name="Серия">HIKARU</param>
# <param name="Инвертор">Да</param>
# <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
# <param name="Потребляемая мощность охл., кВт">1</param>
# <param name="Потребляемая мощность нагр., кВт">0.9</param>
# <param name="Хладагент">R410A</param>
# <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
# <param name="Макс. длинна магистрали, м">15</param>
# <param name="Макс. перепад высоты, м">5</param>
# <param name="Мин. температура окр. среды">-15</param>
# <param name="Уровень шума, дБ(А)">24</param>
# <param name="Размеры ДхВхГ, мм">800x270x214</param>
# <param name="Размеры упаковки ДхВхГ, мм">830x335x260</param>
# <param name="Вес нетто, кг">7.9</param>
# <param name="Wi-Fi">Нет</param>
# <param name="Гарантийный срок, лет">3</param>
# </offer>

# <offer id="6245" available="false">
# <url>https://b2b.ktg.in.ua/catalog/6245</url>
# <price>13357.00</price>
# <currencyId>UAH</currencyId>
# <categoryId>30</categoryId>
# <picture>
# https://b2b.ktg.in.ua/uploads/cache/CatalogItems/CatalogItems6245/aebc1e451c-1_resize_1200x1200.png
# </picture>
# <name>SOE-035VHDC</name>
# <description>
# Потужність охолодження 3,45кВт, Магістраль 6,35(1/4) / 9,52(3/8), живлення 220-240В / 1Ф / 50Гц, максимальна довжина магістралі 15м, максимальний перепад висот 5м , Компресор LG, відстань між лапами 440мм
# </description>
# <param name="Производительность охл., кВт">3.45</param>
# <param name="Производительность нагр., кВт">3.5</param>
# <param name="Тип оборудования">Бытовые</param>
# <param name="Тип блока">Наружный</param>
# <param name="Серия">HIKARU</param>
# <param name="Инвертор">Да</param>
# <param name="Электропитание, В/Ф/Гц">220-240 / 1 / 50</param>
# <param name="Потребляемая мощность охл., кВт">1</param>
# <param name="Потребляемая мощность нагр., кВт">0.9</param>
# <param name="Компрессор">LG</param>
# <param name="Хладагент">R410A</param>
# <param name="Диаметр труб, мм(дюйм)">6,35(1/4) / 9,52(3/8)</param>
# <param name="Макс. длинна магистрали, м">15</param>
# <param name="Макс. перепад высоты, м">5</param>
# <param name="Мин. температура окр. среды">-15</param>
# <param name="Размеры ДхВхГ, мм">660x482x240</param>
# <param name="Размеры упаковки ДхВхГ, мм">780x530x315</param>
# <param name="Расстояние между лапами, мм">440</param>
# <param name="Вес нетто, кг">23.2</param>
# <param name="Wi-Fi">Нет</param>
# <param name="Гарантийный срок, лет">3</param>
# </offer>

# </offers>
# </shop>
# </yml_catalog>'