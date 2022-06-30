class AddParamsToBlocks < ActiveRecord::Migration[7.0]
  def change
    add_column :blocks, :rte_type, :string
    add_column :blocks, :container_tag, :string
  end
end
