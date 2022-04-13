class Admin::SettingsController < Admin::MainController

  # before_action :get_settings

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

  def get_settings
    @setting = Setting.first
  end

  def setting_params
    params.require(:setting).permit(:site_name, :site_domain, :header, :sidebar, :footer, :head_tags, :body_tags, :logo, :favicon)
  end
end
