class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dni, :string
    add_column :users, :nombre, :string
    add_column :users, :paterno, :string
    add_column :users, :materno, :string
    add_column :users, :sexo, :boolean
    add_column :users, :fechanacio, :date
    add_column :users, :linkfoto, :string
  end
end
