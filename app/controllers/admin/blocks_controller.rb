class Admin::BlocksController < Admin::MainController

  before_action :set_block, only: [:show, :edit, :update, :destroy]
  
  def index
    @blocks = {
      system_blocks: Block.where(is_system: true).order(id: :asc),
      regular_blocks: Block.where(is_system: false).order(id: :asc)
    }
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
    params.require(:block).permit([:title, :template_name, :content, :block_category_id, :is_system])
  end
    
end
