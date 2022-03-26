class Admin::TemplatesController < Admin::MainController

  before_action :set_template, only: [:show, :edit, :update, :destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_template_not_found
  
  def index
    @templates = Template.all
  end

  def show
  end

  def new
    @template = Template.new
  end

  def create
    @template = Template.new(template_params)

    if @template.save
      redirect_to admin_templates_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def update
    if @template.update(template_params)
      redirect_to admin_templates_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def destroy
    @template.destroy

    redirect_to admin_templates_path, flash: { success: t('.success') }
  end

  private

  def set_template
    @template = Template.find(params[:id])
  end

  def template_params
    params.require(:template).permit([:title, :description, :content])
  end

  def rescue_with_template_not_found
    redirect_to admin_template_path, flash: { danger: t('not_found', item: Template.model_name.human(count: 10) ) } 
  end
    
end
