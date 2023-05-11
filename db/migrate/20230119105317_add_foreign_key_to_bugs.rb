class AddForeignKeyToBugs < ActiveRecord::Migration[5.2]
  def change
    add_column :bugs, :project_id :int
    add_foreign_key :bugs, :projects, column: :project_id, primary_key: "project_id"
  end
end
