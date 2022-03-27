class CreateBlocks < ActiveRecord::Migration[7.0]
  def change
    create_table :blocks do |t|
      t.string :title
      t.string :template_name
      t.json :content

      t.timestamps
    end
  end
end
