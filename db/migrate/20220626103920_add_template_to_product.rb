class AddTemplateToProduct < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :template_id
    add_column :products, :template_id, :integer
  end
end
