class AddColumnToEncuesta < ActiveRecord::Migration
  def change
    add_column :encuestas, :agrupacion, :string
  end
end
