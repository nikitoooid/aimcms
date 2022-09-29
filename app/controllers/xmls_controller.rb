class XmlsController < ApplicationController
  def show
    @xml = Xml.find_by(slug: params[:slug])

    render :xml => @xml.xml_content
  end
end
