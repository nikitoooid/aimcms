class Admin::CategoriesController < Admin::MainController
  before_action :set_category, only: [:edit, :update, :destroy]

  PERMITTED = [:title, :slug, :type, :category_id].freeze
  
  def index
    @categories = Category.where.not(type: ['ProductCategory']).order(id: :asc)
  end

  def new
    @category = Category.new
  end

  def edit
    
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
    return params.require(:page_category).permit(PERMITTED) if params.has_key?(:page_category)
    return params.require(:block_category).permit(PERMITTED) if params.has_key?(:block_category)
    return params.require(:document_category).permit(PERMITTED) if params.has_key?(:document_category)
    params.require(:category).permit(PERMITTED)
  end
end