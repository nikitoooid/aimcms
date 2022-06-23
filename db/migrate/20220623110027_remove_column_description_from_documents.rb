class RemoveColumnDescriptionFromDocuments < ActiveRecord::Migration[7.0]
  def change
    remove_column :documents, :description
  end
end
