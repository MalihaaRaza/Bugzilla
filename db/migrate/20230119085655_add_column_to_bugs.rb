class AddColumnToBugs < ActiveRecord::Migration[5.2]
  def change
    add_column :bugs, :title, :text
    add_column :bugs, :deadline, :date
    add_column :bugs, :bug_type, :string
    add_column :bugs, :status, :string
  end
end
