class Admin::ServicesController < Admin::MainController
  
  def sync_page
    render :sync
  end

  def sync
    @errors = []

    if @setting.xml_url.nil? || @setting.xml_url.empty?
      @errors.push('URL to XML file is empty!')
    else
      @errors = SyncProductsService.new(@setting.xml_url,{
        category_xpath: @setting.category_xpath,
        product_xpath: @setting.product_xpath,
        blacklist: {
          categories: @setting.category_blacklist,
          products: @setting.product_blacklist
        },
        whitelist: {
          categories: @setting.category_whitelist,
          products: @setting.product_whitelist
        }
      }).call
    end

    if @errors.empty?
      redirect_to admin_services_sync_path, flash: { success: t('.success') }
    else
      redirect_to admin_services_sync_path, flash: { danger: @errors.join('/n') }
    end
  end

  def join_page
    render :join
  end

  def join
    @errors = JoinOffersService.new('https://b2b.ktg.in.ua/data/yml_catalog.xml').call

    render :xml => @errors
  end

end