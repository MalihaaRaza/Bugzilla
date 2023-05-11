class AddReferenceDevelopsToBugs < ActiveRecord::Migration[5.2]
  def change
    add_reference :bugs, :develop, index:true, foreign_key:true
    add_reference :bugs, :test, index:true, foreign_key:true
  end
end
