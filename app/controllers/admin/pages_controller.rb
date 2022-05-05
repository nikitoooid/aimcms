class Admin::PagesController < Admin::MainController

  before_action :set_page, only: [:show, :edit, :update, :destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_page_not_found
  
  def index
    @pages = Page.all
  end

  def show
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)

    if @page.save
      redirect_to admin_pages_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def update
    if @page.update(page_params)
      redirect_to admin_pages_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def destroy
    @page.destroy

    redirect_to admin_pages_path, flash: { success: t('.success') }
  end

  private

  def set_page
    @page = Page.find(params[:id])
  end

  def page_params
    params.require(:page).permit([
      :title, :slug, :style_ids, :content, :description,
      :og_title, :og_type, :og_image, :og_url, :og_description
    ])
  end

  def rescue_with_page_not_found
    redirect_to admin_pages_path, flash: { danger: t('not_found', item: Page.model_name.human(count: 10) ) } 
  end
    
end
