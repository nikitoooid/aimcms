class Admin::SettingsController < Admin::MainController

  def index
    @settings = Settings.first
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
    params.require(:settings).permit([:title, :slug, :content])
  end
end
