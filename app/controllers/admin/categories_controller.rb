class Admin::CategoriesController < Admin::MainController
  before_action :set_category, only: [:edit, :update, :destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_category_not_found
  
  def index
    @categories = Category.order(id: :asc)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to admin_categories_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def update
    if @category.update(category_params)
      redirect_to admin_categories_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def destroy
    @category.destroy

    redirect_to admin_categories_path, flash: { success: t('.success') }
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit([:title, :slug, :for])
  end

  def rescue_with_category_not_found
    redirect_to admin_categories_path, flash: { danger: t('not_found', item: Category.model_name.human(count: 10) ) } 
  end
end