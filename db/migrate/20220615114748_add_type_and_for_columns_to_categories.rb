class AddTypeAndForColumnsToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :slug, :string, null: false
    add_column :categories, :type, :string
  end
end
