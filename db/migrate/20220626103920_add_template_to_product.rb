class AddTemplateToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :template_id, :integer
  end
end
