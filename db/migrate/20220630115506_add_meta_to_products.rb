class AddMetaToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :og_title, :string
    add_column :products, :og_type, :string
    add_column :products, :og_image, :string
    add_column :products, :og_description, :text
    add_column :products, :og_url, :string
  end
end
