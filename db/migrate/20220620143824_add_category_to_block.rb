class AddCategoryToBlock < ActiveRecord::Migration[7.0]
  def change
    add_column :blocks, :block_category_id, :integer
  end
end
