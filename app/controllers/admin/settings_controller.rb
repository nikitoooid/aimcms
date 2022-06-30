class Admin::SettingsController < Admin::MainController

  def index
  end

  def update
    if @setting.update(setting_params)
      redirect_to admin_settings_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :index
    end
  end

  private

  def setting_params
    params.require(:setting).permit(:site_name, :header_id, :footer_id, :head_tags,
                    :body_tags, :logo, :favicon, :active_store, :active_store_sync,
                    :product_template_id, :xml_url, :category_xpath, :product_xpath,
                    :category_whitelist, :category_blacklist, :product_whitelist,
                    :product_blacklist)
  end
end
