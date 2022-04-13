class CreateSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :settings do |t|
      t.string :site_name,    null: false, default: 'My new website'
      t.string :site_domain,  null: false, default: 'mynewwebsite.com'
      
      t.text :head_tags
      t.text :body_tags

      t.timestamps
    end
  end
end
