class AddCategoryToPage < ActiveRecord::Migration[7.0]
  def change
    add_column :pages, :page_category_id, :integer
  end
end
