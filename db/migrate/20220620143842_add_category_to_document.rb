class AddCategoryToDocument < ActiveRecord::Migration[7.0]
  def change
    add_column :documents, :document_category_id, :integer
  end
end
