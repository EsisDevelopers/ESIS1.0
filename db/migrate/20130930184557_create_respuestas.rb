class CreateRespuestas < ActiveRecord::Migration
  def change
    create_table :respuestas do |t|
      t.string :opcion

      t.timestamps
    end
  end
end
