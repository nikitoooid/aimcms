class DocumentsController < ApplicationController
  
  def index
    @documents = Document.all
  end

  def show
    @document = Document.find(params[:id])
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)

    if @document.save
      redirect_to documents_path
    else
      rendeer :new
    end
  end

  def destroy
    @document = Document.find(params[:id])
    @document.file.purge
    @document.destroy

    redirect_to documents_path
  end

  private

  def document_params
    params.require(:document).permit(:title, :description, :file)
  end
end
