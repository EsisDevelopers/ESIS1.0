class RenameColumnNameToUsers < ActiveRecord::Migration
  def change
	rename_column :users, :name, :codigo
  end
end
