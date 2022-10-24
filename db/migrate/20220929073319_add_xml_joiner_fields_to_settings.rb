class AddXmlJoinerFieldsToSettings < ActiveRecord::Migration[7.0]
  def change
    add_column :settings, :xml_joiner, :boolean, default: false
  end
end
