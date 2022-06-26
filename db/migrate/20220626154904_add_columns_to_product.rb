class AddColumnsToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :picture_url, :string
    add_column :products, :description, :text
    add_column :products, :price, :integer
    add_column :products, :currency, :string
    add_column :products, :available, :boolean, null: false, default: false
    add_column :products, :content, :json
  end
end
