class Admin::ProductsController < Admin::MainController
  
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    # @product.testvar = ActiveSupport::JSON.decode(@product.content)
    @product.content = {'link' => 'https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg', 'content' => 'test content',
      'params' => [
        {name: 'Строка 1', value: '1', 'show' => true},
        {name: 'Строка 2', value: '2', 'show' => true},
        {name: 'Строка 3', value: '3', 'show' => true},
        {name: 'Строка 4', value: '4', 'show' => true}
      ]
    }
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def update
    if @product.update(product_params)
      redirect_to admin_products_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def destroy
    @product.destroy

    redirect_to admin_products_path, flash: { success: t('.success') }
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit([:title, :slug, :product_category_id, :template_id,
                                      :description, :available, :price, :currency, :picture_url, :content])
  end
end