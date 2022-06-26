class AddProductTemplateToSettings < ActiveRecord::Migration[7.0]
  def change
    add_column :settings, :product_template_id, :integer
  end
end
