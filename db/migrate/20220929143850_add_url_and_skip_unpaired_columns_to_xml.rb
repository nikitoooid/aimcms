class AddUrlAndSkipUnpairedColumnsToXml < ActiveRecord::Migration[7.0]
  def change
    add_column :xmls, :url, :string
    add_column :xmls, :skip_unpaired, :boolean, null: false, default: false
  end
end
