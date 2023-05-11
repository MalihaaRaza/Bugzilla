class AddToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :project_title, :string
  end
end
