class AddHeaderIdToSettings < ActiveRecord::Migration[7.0]
  def change
    add_column :settings, :header_id, :integer
  end
end
