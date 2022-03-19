class RegistrationsController < Devise::RegistrationsController

  protected

  def after_update_path_for(_resource)
    user_path(_resource)
  end
end
