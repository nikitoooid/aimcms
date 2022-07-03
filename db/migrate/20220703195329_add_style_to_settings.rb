class AddStyleToSettings < ActiveRecord::Migration[7.0]
  def change
    add_column :settings, :style_id, :integer
  end
end
