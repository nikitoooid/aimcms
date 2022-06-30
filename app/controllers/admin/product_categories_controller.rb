class Admin::ProductCategoriesController < Admin::MainController
  
  before_action :set_category, only: [:edit, :update, :destroy]

  def index
    @product_categories = ProductCategory.all
  end

  def new
    @product_category = ProductCategory.new
  end

  def edit
    
  end

  def create
    @product_category = ProductCategory.new(category_params)

    if @product_category.save
      redirect_to admin_product_categories_path, flash: { success: t('admin.categories.create.success') }
    else
      flash[:danger] = t('admin.categories.create.fail')
      render :new
    end
  end

  def update
    if @product_category.update(category_params)
      redirect_to admin_product_categories_path, flash: { success: t('admin.categories.update.success') }
    else
      flash[:danger] = t('admin.categories.update.fail')
      render :new
    end
  end

  def destroy
    @product_category.destroy

    redirect_to admin_product_categories_path, flash: { success: t('admin.categories.destroy.success') }
  end

  private

  def set_category
    @product_category = ProductCategory.find(params[:id])
  end

  def category_params
    params.require(:product_category).permit(:title, :slug, :category_id)
  end

end