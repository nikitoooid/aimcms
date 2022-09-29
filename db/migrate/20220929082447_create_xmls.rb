class CreateXmls < ActiveRecord::Migration[7.0]
  def change
    create_table :xmls do |t|
      t.string :title, null: false
      t.boolean :is_formed, default: false
      t.string :slug, null: false
      t.json :pairs
      t.string :offer_path
      t.string :search_by
      t.string :remove_nodes
      t.string :rewrite_nodes
      t.string :join_nodes
      t.string :add_nodes

      t.timestamps
    end
  end
end
