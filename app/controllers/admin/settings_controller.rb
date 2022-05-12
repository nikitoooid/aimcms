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
    params.require(:setting).permit(:site_name, :site_domain, :header_id, :footer_id, :head_tags, :body_tags, :logo, :favicon)
  end
end
