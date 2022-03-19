class UsersController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_user_not_found
  
  def profile
    unless user_signed_in?
      redirect_to(new_user_session_path, flash: { danger: t('need_login') })
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def rescue_with_user_not_found
    redirect_to root_path, flash: { danger: t('not_found', item: User.model_name.human ) }
  end

end