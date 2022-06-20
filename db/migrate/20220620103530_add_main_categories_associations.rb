class AddMainCategoriesAssociations < ActiveRecord::Migration[7.0]
  def change
    add_column :pages, :category_id, :integer
    add_column :blocks, :category_id, :integer
    add_column :documents, :category_id, :integer
  end
end
