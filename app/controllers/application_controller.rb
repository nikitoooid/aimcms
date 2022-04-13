class ApplicationController < ActionController::Base

  before_action :set_locale, :get_setting
  before_action :configure_permitted_parameters, if: :devise_controller?

  def default_url_options
    I18n.locale != I18n.default_locale ? { lang: I18n.locale } : {}
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :avatar])
  end

  private

  def get_setting
    @setting = Setting.first
  end

  def set_locale
    I18n.locale = I18n.locale_available?(params[:lang]) ? params[:lang] : I18n.default_locale
  end

end
