class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|

      t.timestamps
    end
  end
end
