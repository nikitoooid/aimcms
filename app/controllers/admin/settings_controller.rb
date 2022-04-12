class Admin::SettingsController < Admin::MainController

  def index
    @settings = Setting.first
  end

  def update
    if @page.update(settings_params)
      redirect_to admin_settings_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :index
    end
  end

  private

  def settings_params
    params.require(:setting).permit([:site_name, :site_domain, :head_tags, :body_tags, :logo, :favicon])
  end
end
