class AddColumnToDevelopers < ActiveRecord::Migration[5.2]
  def change
    add_column :developers, :user_type, :string
  end
end
