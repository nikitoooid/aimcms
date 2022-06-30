class Admin::UsersController < Admin::MainController

  before_action :set_user, only: %i[show edit update destroy]

  PERMITTED = [:first_name, :last_name, :email, :password, :password_confirmation, :avatar, :type].freeze
  
  def index
    @users = User.order(type: :asc, first_name: :asc)
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

  def destroy
    @user.destroy

    redirect_to admin_users_path, flash: { success: t('.success') }
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    return params.require(:admin).permit(PERMITTED) if params.has_key?(:admin)
    params.require(:user).permit(PERMITTED)
  end

end
