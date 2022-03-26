class Admin::BlocksController < Admin::MainController

  before_action :set_block, only: [:show, :edit, :update, :destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_block_not_found
  
  def index
    @blocks = Block.all
  end

  def show
  end

  def new
    @block = Block.new
  end

  def create
    @block = Block.new(block_params)

    if @block.save
      redirect_to admin_blocks_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def update
    if @block.update(block_params)
      redirect_to admin_blocks_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def destroy
    @block.destroy

    redirect_to admin_blocks_path, flash: { success: t('.success') }
  end

  private

  def set_block
    @block = Block.find(params[:id])
  end

  def block_params
    params.require(:block).permit([:title, :template_name, :content])
  end

  def rescue_with_block_not_found
    redirect_to admin_block_path, flash: { danger: t('not_found', item: Block.model_name.human(count: 10) ) } 
  end
    
end
