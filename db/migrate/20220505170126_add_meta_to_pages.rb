class AddMetaToPages < ActiveRecord::Migration[7.0]
  def change
    add_column :pages, :description, :text
    add_column :pages, :og_title, :string
    add_column :pages, :og_type, :string
    add_column :pages, :og_image, :string
    add_column :pages, :og_description, :text
    add_column :pages, :og_url, :string
  end
end
