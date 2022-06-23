class UsersController < ApplicationController
  
  def profile
    unless user_signed_in?
      redirect_to(new_user_session_path, flash: { danger: t('need_login') })
    end
  end

  def show
    @user = User.find(params[:id])
  end

end