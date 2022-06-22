class AddSystemIdentifierToBlock < ActiveRecord::Migration[7.0]
  def change
    add_column :blocks, :is_system, :boolean, null: false, default: false
  end
end
