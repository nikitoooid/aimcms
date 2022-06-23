class AddStoreToSettings < ActiveRecord::Migration[7.0]
  def change
    add_column :settings, :active_store, :boolean, null: false, default: false
    add_column :settings, :active_store_sync, :boolean, null: false, default: false
  end
end
