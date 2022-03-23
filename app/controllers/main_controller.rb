class MainController < ApplicationController
  
  def index
    @page = Page.find_by(slug: 'index') || Page.first
  end

end
