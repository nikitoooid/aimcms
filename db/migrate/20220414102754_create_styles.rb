class CreateStyles < ActiveRecord::Migration[7.0]
  def change
    create_table :styles do |t|
      t.string :title, null: false
      t.text :description
      t.text :content

      t.timestamps
    end
  end
end
