module ApplicationHelper

  def mark_active(link_path)
    current_page?(link_path) ? 'active' : ''
  end

  def sidebar_item(link_text, link_path, icon_name)
    content_tag :li, class: 'nav-item' do
      link_to link_path, class: "nav-link #{mark_active(link_path)}" do
        bootstrap_icon(icon_name) + " #{link_text}"
      end
    end
  end

  def page_meta_tags(resource, params)
    result = []
    
    if params[:meta]
      params[:meta].each do |t|
        result.push(tag :meta, name: t, content: resource[t]) unless resource[t].empty?
      end
    end

    if params[:og]
      params[:og].each do |t|
        attribute = t.gsub(':','_')
        result.push(tag :meta, property: t, content: resource[attribute]) unless resource[attribute].empty?
      end
    end

    result.join("\n").html_safe
  end

  def meta_robots(resource)
    tag :meta, name: 'robots', content:"#{resource.index ? 'index' : 'noindex'},#{resource.follow ? 'follow' : 'nofollow'}"
  end

  private

  def bootstrap_icon(icon_name)
    return '' if icon_name.nil?
    content_tag :i, nil, class: "bi-#{icon_name}"
  end

end
