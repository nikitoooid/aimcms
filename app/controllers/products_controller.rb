class ProductsController < ApplicationController
  
  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by(slug: params[:slug])
  end

  def show_category_items
    @category = ProductCategory.find_by(slug: params[:slug])
    @products = @category.items
  end

end