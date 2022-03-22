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

  private

  def bootstrap_icon(icon_name)
    return '' if icon_name.nil?

    content_tag :i, nil, class: "bi-#{icon_name}"
  end

end
