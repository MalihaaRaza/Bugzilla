class AddColumnToQas < ActiveRecord::Migration[5.2]
  def change
    add_column :qas, :user_type, :string
  end
end
