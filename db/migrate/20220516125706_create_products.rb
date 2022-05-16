class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.string :slug, null: false

      t.references :template, foreign_key: {to_table: :blocks}
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
