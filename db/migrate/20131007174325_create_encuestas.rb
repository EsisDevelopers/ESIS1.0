class CreateEncuestas < ActiveRecord::Migration
  def change
    create_table :encuestas do |t|
      t.integer :pregunta_id
      t.integer :respuesta_id

      t.timestamps
    end
    add_index :encuestas, :pregunta_id
    add_index :encuestas, :respuesta_id
  end
end
