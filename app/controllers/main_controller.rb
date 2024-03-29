class MainController < ApplicationController
  
  def index
    @page = Page.find_by(slug: 'index') || Page.first
  end

  def show
    @page = Page.find_by(slug: params[:slug])
    
    render :show
  end

  def sitemap
    @pages = Page.all
    @products = Product.all
  end

end
