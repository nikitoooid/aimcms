class DocumentsController < ApplicationController
  def show
    @document = Document.find(params[:id])

    redirect_to url_for(@document.file)
  end
end
