class Admin::XmlsController < Admin::MainController
  
  before_action :set_xml, only: [:show, :edit, :update, :destroy, :join]
  
  def index
    @xmls = Xml.all
  end

  def show
    render :xml => @xml.xml_content
  end

  def new
    @xml = Xml.new
  end

  def edit
    
  end

  def create
    @xml = Xml.new(xml_params)

    if @xml.save
      redirect_to admin_xmls_path, flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def update
    if @xml.update(xml_params)
      redirect_to edit_admin_xml_path(@xml), flash: { success: t('.success') }
    else
      flash[:danger] = t('.fail')
      render :new
    end
  end

  def destroy
    if @xml.destroy
      redirect_to admin_xmls_path, flash: { success: t('.success') }
    else
      redirect_to admin_xmls_path, flash: { danger: t('.fail') }
    end
  end

  def join
    if @xml.join
      redirect_to admin_xmls_path, flash: { success: t('.success') }
    else
      redirect_to admin_xmls_path, flash: { danger: t('.fail') }
    end
  end

  private

  def xml_params
    formatted_params = params.require(:xml).permit(:title, :is_formed, :slug, :xml_url,
                                :pairs, :offer_path, :search_by, :remove_nodes,
                                :rewrite_nodes, :join_nodes, :add_nodes)

    formatted_params[:pairs] = JSON.parse(formatted_params[:pairs]) unless formatted_params[:pairs].empty?
    formatted_params
  end

  def set_xml
    @xml = Xml.find(params[:id])
  end
end
