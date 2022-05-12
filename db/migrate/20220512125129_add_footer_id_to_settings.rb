class AddFooterIdToSettings < ActiveRecord::Migration[7.0]
  def change
    add_column :settings, :footer_id, :integer
  end
end
