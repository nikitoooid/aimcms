module RteHelper

  def rte_localization
    t('rte').to_json.html_safe
  end

end
