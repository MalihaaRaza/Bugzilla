class DropTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :managers
    drop_table :developers
    drop_table :qas
  end
end
