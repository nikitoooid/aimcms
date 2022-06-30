class RemoveSiteDomainFromSettings < ActiveRecord::Migration[7.0]
  def change
    remove_column :settings, :site_domain
  end
end
