class DocumentsController < ApplicationController
  
  before_action :set_document, only: %i[show update destroy]
  before_action :set_documents, only: %i[index]

  def index
  end

  def show
  end

  def new
    @document = Document.new
  end

  def create
    @params = { title: document_params[:file].original_filename, description: document_params[:description], file: document_params[:file] }
    @document = Document.new(@params)

    if @document.save
      redirect_to documents_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def update
    if @document.update(document_params)
      @document.file.filename = @document.title
      
      redirect_to document_path(@document), flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :show
    end
  end

  def destroy
    @document.file.purge
    @document.destroy

    redirect_to documents_path, flash: { success: t('.success') }
  end

  private

  def set_document
    @document = Document.find(params[:id])
  end

  def set_documents
    @documents = Document.all
  end

  def document_params
    params.require(:document).permit(:title, :description, :file)
  end
end
