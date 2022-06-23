class Admin::ProductCategoriesController < Admin::MainController
  
  def index
    @categories = ProductCategory.all
  end
end