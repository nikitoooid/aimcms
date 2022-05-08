class Admin::StylesController < Admin::MainController

  before_action :set_style, only: [:edit, :update, :destroy]
  
  def index
    @styles = Style.order(id: :asc)
  end

  def new
    @style = Style.new
  end

  def edit
    
  end

  def create
    @style = Style.new(style_params)

    if @style.save
      redirect_to admin_styles_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def update
    if @style.update(style_params)
      redirect_to admin_styles_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def destroy
    @style.destroy

    redirect_to admin_styles_path, flash: { success: t('.success') }
  end

  private

  def set_style
    @style = Style.find(params[:id])
  end

  def style_params
    params.require(:style).permit([:title, :description, :content])
  end

end