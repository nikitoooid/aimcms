class Admin::UsersController < Admin::MainController

  before_action :set_user, only: %i[edit update]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_user_not_found

  PERMITTED = [:first_name, :last_name, :email, :password, :password_confirmation, :avatar, :type].freeze
  
  def index
    @users = User.all
  end

  def edit
    
  end

  def update
    if @user.update(user_params)
      
      redirect_to admin_users_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    return params.require(:admin).permit(PERMITTED) if params.has_key?(:admin)
    params.require(:user).permit(PERMITTED)
  end

  def rescue_with_user_not_found
    redirect_to admin_path, flash: { danger: t('not_found', item: User.model_name.human(count: 10) ) }
  end

end
