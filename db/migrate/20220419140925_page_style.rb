class PageStyle < ActiveRecord::Migration[7.0]
  def change
    create_table :page_style, id: false do |t|
      t.belongs_to :page
      t.belongs_to :style
    end
  end
end
