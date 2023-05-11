class AddColumnToManagers < ActiveRecord::Migration[5.2]
  def change
    add_column :managers, :user_type, :string
  end
end
