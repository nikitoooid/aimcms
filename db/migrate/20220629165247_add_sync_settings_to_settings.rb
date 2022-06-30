class AddSyncSettingsToSettings < ActiveRecord::Migration[7.0]
  def change
    add_column :settings, :xml_url, :string
    add_column :settings, :category_xpath, :string
    add_column :settings, :product_xpath, :string
    add_column :settings, :category_whitelist, :text
    add_column :settings, :category_blacklist, :text
    add_column :settings, :product_whitelist, :text
    add_column :settings, :product_blacklist, :text
  end
end
