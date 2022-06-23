class Admin::DocumentsController < Admin::MainController
  
  before_action :set_document, only: %i[show update destroy]
  before_action :set_documents, only: %i[index list]

  def index
  end

  def show
  end

  def new
    @document = Document.new
  end

  def list
    render json: Document.json_list
  end

  def create
    @params = { title: document_params[:file].original_filename,
                file: document_params[:file], document_category_id: document_params[:document_category_id] }
    @document = Document.new(@params)

    if @document.save
      redirect_to admin_documents_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def update
    if @document.update(document_params)
      @document.file.filename = @document.title
      
      redirect_to admin_document_path(@document), flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :show
    end
  end

  def destroy
    @document.file.purge
    @document.destroy

    redirect_to admin_documents_path, flash: { success: t('.success') }
  end

  private

  def set_document
    @document = Document.find(params[:id])
  end

  def set_documents
    @documents = Document.all
  end

  def document_params
    params.require(:document).permit(:title, :file, :category_id)
  end
end
