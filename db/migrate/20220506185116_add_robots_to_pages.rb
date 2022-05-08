class AddRobotsToPages < ActiveRecord::Migration[7.0]
  def change
    add_column :pages, :index, :boolean, default: true
    add_column :pages, :follow, :boolean, default: true
  end
end
